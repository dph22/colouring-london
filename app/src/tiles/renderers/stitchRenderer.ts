import sharp from 'sharp';
import { Image } from 'mapnik';

import { TileParams, TileRenderer } from "../types";
import { getBbox, getXYZ, TILE_SIZE, formatParams } from "../util";

class StitchRenderer implements TileRenderer {
    constructor(
        /** Renderer to use when retrieving tiles to be stitched together */
        public tileRenderer: TileRenderer
    ) {}

    getTile(tileParams: TileParams, dataParams: any): Promise<Image> {
        console.log(`Stitching tile ${formatParams(tileParams)}`);
        return this.stitchTile(tileParams, dataParams, this.tileRenderer);
    }

    private async stitchTile({ tileset, z, x, y, scale }: TileParams, dataParams: any, tileRenderer: TileRenderer) {
        const bbox = getBbox(z, x, y);
        const nextZ = z + 1;
        const nextXY = getXYZ(bbox, nextZ);
        const tileSize = TILE_SIZE * scale;


        const [topLeft, topRight, bottomLeft, bottomRight] = await Promise.all([
            [nextXY.minX, nextXY.minY],
            [nextXY.maxX, nextXY.minY],
            [nextXY.minX, nextXY.maxY],
            [nextXY.maxX, nextXY.maxY]
        ].map(([x, y]) => tileRenderer.getTile({ tileset, z: nextZ, x, y, scale }, dataParams)));

        // not possible to chain overlays in a single pipeline, but there may still be a better
        // way to create image buffer here (four tiles resize to one at the next zoom level)
        // instead of repeatedly creating `sharp` objects, to png, to buffer...
        return sharp({
            create: {
                width: tileSize * 2,
                height: tileSize * 2,
                channels: 4,
                background: { r: 0, g: 0, b: 0, alpha: 0 }
            }
        }).overlayWith(
            topLeft, { gravity: sharp.gravity.northwest }
        ).png().toBuffer().then((buf) => {
            return sharp(buf).overlayWith(
                topRight, { gravity: sharp.gravity.northeast }
            ).png().toBuffer()
        }).then((buf) => {
            return sharp(buf).overlayWith(
                bottomLeft, { gravity: sharp.gravity.southwest }
            ).png().toBuffer()
        }).then((buf) => {
            return sharp(buf).overlayWith(
                bottomRight, { gravity: sharp.gravity.southeast }
            ).png().toBuffer()
        }).then((buf) => {
            return sharp(buf
            ).resize(tileSize, tileSize, { fit: 'inside' }
            ).png().toBuffer()
        })
    }

}

export {
    StitchRenderer
};
