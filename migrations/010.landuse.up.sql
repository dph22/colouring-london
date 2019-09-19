-- Create land use and fields
--Landuse is hierachical. Highest level is Order (Residential) then Group (Residential-Dwelling) then Class (Residential-Dwelling-Detached house)
--Fields could be linked when not mixed use Example: If user inputs class field (Detached-House) on front end then trigger on db automatically will populate group and order. If we go this route then a trigger is needed on the db both to run and remove this process.
--TODO Remove nulls, add parent_name and grand_parent name these
--TODO add lookup colum class-group for web app search
--TODO set keys
DROP TABLE IF EXISTS landuse_classifications;

<<<<<<< HEAD

CREATE TABLE IF NOT EXISTS landuse_classifications (
        landuse_id VARCHAR(9) NOT NULL,
        description VARCHAR(74) NOT NULL,
        level VARCHAR(5) NOT NULL,
        parent VARCHAR(4)
);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U010', 'Agriculture And Fisheries', 'order', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U080', 'Community Services', 'order', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U120', 'Defence', 'order', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U020', 'Forestry', 'order', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U100', 'Industry And Business', 'order', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U030', 'Minerals', 'order', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U040', 'Recreation And Leisure', 'order', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U070', 'Residential', 'order', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U090', 'Retail', 'order', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U050', 'Transport', 'order', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U130', 'Unused Land', 'order', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U060', 'Utilities And Infrastructure', 'order', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U110', 'Vacant And Derelict', 'order', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U011', 'Agriculture', 'group', 'U010');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U012', 'Fisheries', 'group', 'U010');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U021', 'Managed forest', 'group', 'U020');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U022', 'Un-managed forest', 'group', 'U020');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U031', 'Mineral workings and quarries', 'group', 'U030');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U041', 'Outdoor amenity and open spaces', 'group', 'U040');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U042', 'Amusement and show places', 'group', 'U040');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U043', 'Libraries, museums and galleries', 'group', 'U040');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U044', 'Sports facilities and grounds', 'group', 'U040');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U045', 'Holiday parks and camps', 'group', 'U040');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U046', 'Allotments and city farms', 'group', 'U040');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U051', 'Transport tracks and ways', 'group', 'U050');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U054', 'Transport terminals and interchanges', 'group', 'U050');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U053', 'Car parks', 'group', 'U050');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U051', 'Vehicle storage', 'group', 'U050');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U055', 'Goods and freight terminals', 'group', 'U050');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U056', 'Waterways', 'group', 'U050');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U061', 'Energy production and distribution', 'group', 'U060');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U062', 'Water storage and treatment', 'group', 'U060');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U063', 'Refuse disposal', 'group', 'U060');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U064', 'Cemeteries and crematoria', 'group', 'U060');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U065', 'Post and telecommunications', 'group', 'U060');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U071', 'Dwellings', 'group', 'U070');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U072', 'Hotels, boarding and guest houses', 'group', 'U070');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U073', 'Residential institutions', 'group', 'U070');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U081', 'Medical and health care services', 'group', 'U080');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U082', 'Places of worship', 'group', 'U080');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U083', 'Education', 'group', 'U080');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U084', 'Community services', 'group', 'U080');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U091', 'Shops', 'group', 'U090');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U092', 'Financial and professional services', 'group', 'U090');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U093', 'Restaurants and cafes', 'group', 'U090');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U094', 'Public houses, bars and nightclubs', 'group', 'U090');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U101', 'Manufacturing', 'group', 'U100');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U102', 'Offices', 'group', 'U100');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U103', 'Storage', 'group', 'U100');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U104', 'Wholesale distribution', 'group', 'U100');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U111', 'Vacant', 'group', 'U110');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U112', 'Derelict', 'group', 'U110');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U121', 'Defence', 'group', 'U120');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('U131', 'Unused land', 'group', 'U130');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL02A -A', 'Abandoned building', 'class', 'U112');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA06A -A', 'Abrasives and other building materials manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01E -A', 'Access road', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01F -A', 'Adult education centre', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM06A -A', 'Advertising hoarding', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM06A', 'Advertising places', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR05A -A', 'Aerial ropeway', 'class', 'U055');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02A -A', 'Aerial ropeway passenger terminal', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04E -A', 'Aerospace equipment manufacturing or repairing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01D-A', 'Aggregate and stone handling installation', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ST01A -A', 'Agricultural machinery store', 'class', 'U103');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH01B -A', 'Agricultural machinery dealer�s place', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04A -A', 'Agricultural machinery manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG05A -A', 'Agricultural research establishment', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG', 'Agriculture and fisheries places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02B -A', 'Air freight terminal', 'class', 'U055');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02A -B', 'Air passenger terminal', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02C-A', 'Aircraft hangar', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02A -C', 'Airport', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01E -B', 'All purpose road', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06B -A', 'Allotment gardens', 'class', 'U046');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA01B -A', 'Aluminium and aluminium alloy manufacturing', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01B -A', 'Ambulance station', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01', 'Amenity, amusement and show places', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01C', 'Amusement places', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR04A -A', 'Anchorage', 'class', 'U056');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01B -A', 'Ancient monument', 'class', 'U041');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA02A -A', 'Animal and poultry food manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG01A -A', 'Animal artificial insemination centre', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG01B -A', 'Animal boarding establishment', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG02A', 'Animal breeding places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG01B -B', 'Animal clipping and manicure establishment', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG01A -B', 'Animal dipping place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG02', 'Animal living places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03A', 'Animal milking places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03', 'Animal product processing places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03F -A', 'Animal product waste store', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03F -B', 'Animal product waste treatment places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03F', 'Animal products waste handling places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG02B', 'Animal rearing places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG01A', 'Animal service places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG01', 'Animal service places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03B', 'Animal shearing places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03C', 'Animal slaughtering places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03C-A', 'Animal stunning and killing places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03 I', 'Animal training and competing places', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG01B', 'Animal welfare places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01A -A', 'Ante natal and post natal clinic', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM05A -A', 'Approved school', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01C-A', 'Aquarium', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06A', 'Arable farm places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM08A -A', 'Arbitration court', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED02A -A', 'Archaeological site', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03G-A', 'Archery range', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE02C-A', 'Art gallery', 'class', 'U043');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01C-A', 'Artificial limb and appliance hospital', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03A -A', 'Association football ground', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03E', 'Athletic game courses', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03D', 'Athletic games arenas', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03D-A', 'Athletic ground', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01B', 'Auxiliary service centres medical', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA02A -B', 'Bacon curing, meat and fish product manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03B -A', 'Badminton court', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01A -A', 'Baker�s shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03C', 'Ball game courses', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03B', 'Ball game greens and courts', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03A', 'Ball game pitches and grounds', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('OF02A -A', 'Bank', 'class', 'U092');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS01B -A', 'Barracks', 'class', 'U073');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03A -B', 'Baseball ground', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01A -A', 'Beach or sand dune', 'class', 'U131');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01B -A', 'Beauty salon', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA07A -A', 'Bedding and soft furnishings manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG02B -A', 'Bedding and waste removal', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01C-B', 'Betting office', 'class', 'U092');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01C-C', 'Bingo club', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA02A -C', 'Biscuit manufacturing', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG01A -C', 'Blacksmith premises', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01B -B', 'Blood transfusion centre', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS01A -A', 'Boarding house', 'class', 'U072');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE04B -A', 'Boating facilities', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR04A -B', 'Boatyard', 'class', 'U056');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03E -A', 'Bobsleigh course', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04F -D', 'Bolts, nuts, screws, rivets etc. manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT02B -A', 'Boot and shoe repair establishment', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM05A -B', 'Borstal institution', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01A -A', 'Botanical garden', 'class', 'U041');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03B -B', 'Bowling green', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01F -A', 'Branch line', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA02A -D', 'Bread and flour confectionery manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA02A -E', 'Brewery', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA06A -B', 'Bricks, fireclay and refractory goods manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA06A', 'Bricks, pottery, glass, cement manufacturing places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01C-A', 'Bridleway', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04C-A', 'Broadcast receiving and sound reproducing equipment manufacturing', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01D-A', 'Broadcasting, filming and sound recording studio', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA08A -A', 'Brushes and brooms manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH01A -C', 'Builders merchant''s place', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ST02A -A', 'Builders yard', 'class', 'U103');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS02A -A', 'Building converted to more than one dwelling', 'class', 'U071');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ST01A -B', 'Building equipment store', 'class', 'U103');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('OF02A -B', 'Building society office', 'class', 'U092');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH01A', 'Bulk dealing places', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ST02A', 'Bulk material stores', 'class', 'U103');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS02A -B', 'Bungalow', 'class', 'U071');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02C-B', 'Bus depot', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01D-A', 'Bus only way', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02A -D', 'Bus station', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02A -E', 'Bus stop', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01D-B', 'Bus way', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('OF03A -A', 'Business discussion places', 'class', 'U102');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('OF03A', 'Business meeting places', 'class', 'U102');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('OF03', 'Business meeting places', 'class', 'U102');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01A -B', 'Butcher''s shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE05A -A', 'Camping site', 'class', 'U045');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04F -A', 'Can and metal box manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01C-A', 'Canal (unused)', 'class', 'U131');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR03A -A', 'Canal', 'class', 'U056');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE04B -B', 'Canoeing water', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02A -F', 'Car park', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02C-C', 'Car storage place', 'class', 'U053');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01D-A', 'Caravan sales place', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05A -A', 'Carpet manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01F -A', 'Cash and carry store', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT03B', 'Catering places', 'class', 'U093');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT03', 'Catering service places', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01A -C', 'Cats meat shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03F -A', 'Caving place', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA06A -C', 'Cement manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT07B -A', 'Cemetery', 'class', 'U064');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('OF01A -A', 'Central government administration office', 'class', 'U102');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06A -A', 'Cereal crops', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG07A -A', 'Cereal crops store', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01A -A', 'Chalk working', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT07A -A', 'Chapel of rest', 'class', 'U064');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA03A', 'Chemical and allied industries manufacturing places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM04A -A', 'Children''s home', 'class', 'U073');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01C-D', 'Children''s playground', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01A -B', 'China clay working', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01C-A', 'China clay waste tip and settlement lagoon', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM06B -A', 'Church hall', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01D-B', 'Cinema', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01D-C', 'Circus', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM05B -A', 'Civil Defence centre', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01A -C', 'Clay and shale working', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ST02A -B', 'Cleaning materials store', 'class', 'U103');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01B -A', 'Cleared site', 'class', 'U111');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01A -B', 'Cliff or natural outcrop', 'class', 'U131');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03F', 'Climbing, rambling and caving places', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05C', 'Clothing and footwear manufacturing places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01B -C', 'Clothing and footwear shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05', 'Clothing, textiles, leather, footwear and fur goods manufacturing places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM06B -B', 'Club meeting place', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02C-D', 'Coach depot', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02A -G', 'Coach station', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01A -D', 'Coal mine working', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH01A -A', 'Coal and oil dealer''s place', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA01A', 'Coal and petroleum processing places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01D-B', 'Coal handling installation', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01C-B', 'Coal waste tip and settlement lagoon', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA01', 'Coal, oil and metal processing places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM05B -B', 'Coastguard station', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA02A -F', 'Cocoa, chocolate and sugar confectionery manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA01A -A', 'Coke ovens and solid fuel manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01F -B', 'College of further education', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01F -C', 'College of technology', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01B -A', 'Colliery headgear', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03D-B', 'Combative sports place', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS01B', 'Communal homes', 'class', 'U073');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM06', 'Communication places', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM', 'Community and health services', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM06B -C', 'Community centre', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM05', 'Community protection services', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01D-D', 'Concert arena', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01B -B', 'Confectionery, tobacco and newspaper shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG08B -A', 'Coniferous forest', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA09A -A', 'Construction and demolition site', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04A -B', 'Construction and earth moving equipment manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA09', 'Construction places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA09A', 'Construction places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02B -B', 'Container depot', 'class', 'U055');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01D-A', 'Convalescent home', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR05A -B', 'Conveyor', 'class', 'U055');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA01B -B', 'Copper, brass and other copper alloy manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG08B -B', 'Coppice', 'class', 'U021');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG08B -C', 'Coppice with standards', 'class', 'U021');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH01A -B', 'Corn, seed and agricultural supplies dealer''s place', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM04B -A', 'Counselling agency', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM04B', 'Counselling places', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01A -B', 'Country park', 'class', 'U041');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01D-E', 'Countryside interpretation centre', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM08A', 'Courts', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT07B -B', 'Crematorium', 'class', 'U064');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03A -C', 'Cricket ground', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG07A', 'Crop conditioning grading and storage places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG07', 'Crop processing places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03B -C', 'Croquet lawn', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03 I -A', 'Cross country horse trial course', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03E -B', 'Cross country running course', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06', 'Cultivated places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR06A -A', 'Customs depot', 'class', 'U055');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04F -B', 'Cutlery and plated tableware manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01B -A', 'Cycle track', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03H-A', 'Cycling circuit', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01A -D', 'Dairy shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01C-E', 'Dance hall', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01A -A', 'Day nursery school', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT07B', 'Dead bodies disposal places', 'class', 'U064');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT07A', 'Dead bodies storage places', 'class', 'U064');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH01', 'Dealing in industrial materials, machinery and livestock places', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG08B -D', 'Deciduous forest', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('DF01', 'Defence establishments', 'class', 'U121');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('DF01A', 'Defence training places', 'class', 'U121');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01C-B', 'Dental hospital', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01A -B', 'Dentist''s surgery and consulting room', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01F -B', 'Department store', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS02A -C', 'Detached house', 'class', 'U071');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM05A', 'Detention places', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08F', 'Direction finding places', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08F -B', 'Direction finding transmitter', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01A -C', 'Dispensary', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01D-F', 'Display arena', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT06A', 'District heating places', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT06A -A', 'District heating plant', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01C-B', 'Dock (unused)', 'class', 'U131');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02B -C', 'Docks', 'class', 'U055');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01A -D', 'Doctor''s surgery and consulting room', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03 I -B', 'Dog racing track', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03 I -C', 'Dog trials area', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05C-A', 'Dresses, lingerie, infants wear etc. manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01C-B', 'Drovers way', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT02B -B', 'Dry cleaning and clothing repair establishment', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01B -D', 'Duplicating and copying centre', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS02A', 'Dwellings', 'class', 'U071');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA03A -A', 'Dyestuffs and pigments manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01C-C', 'Ear, nose and throat hospital', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01', 'Education places', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03D-A', 'Egg grading place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04C-B', 'Electric appliances primarily for domestic use manufacturing places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04C', 'Electrical engineering places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04C-C', 'Electrical machinery manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01C-A', 'Electricity showroom', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT02B -A', 'Electricity cableway', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT02B', 'Electricity distribution places', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT02A', 'Electricity production places', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT02', 'Electricity supply places', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT02B -B', 'Electricity transformer station', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04C-D', 'Electronic computers manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ST01A -C', 'Engineering equipment store', 'class', 'U103');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04', 'Engineering places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ST01A', 'Equipment stores', 'class', 'U103');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA03A -B', 'Explosives and fireworks manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01C-D', 'Eye hospital', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01A -E', 'Eye clinic and optician''s surgery and consulting room', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06A -B', 'Fallow land', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01B -C', 'Family planning clinic', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03E', 'Feed handling places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03E -A', 'Feed preparation place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03E -B', 'Feed storage place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG02B -B', 'Feeding', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA03A -C', 'Fertilizer manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('OF02A', 'Financial service offices', 'class', 'U092');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM05B -C', 'Fire station', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01A -E', 'Fish shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG02A -A', 'Fish farm', 'class', 'U012');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03D-B', 'Fish sorting place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG04A', 'Fishery places', 'class', 'U012');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06B -B', 'Flower bed', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01A', 'Food and drink shops', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH02A', 'Food and drink wholesaling places', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA02A', 'Food, drink and tobacco manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01A -F', 'Foot clinic and chiropodist''s surgery and consulting room', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01A -A', 'Footpath', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05C-B', 'Footwear manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01B -D', 'Forensic medicine centre', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG08B', 'Forestry places', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01A -F', 'Fried fish shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01A -G', 'Frozen food shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA02A -G', 'Fruit and vegetable product manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG07A -B', 'Fruit crops', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01C-F', 'Fun fair', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05B -A', 'Fur goods manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA07A -B', 'Furniture and upholstery manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ST03A -A', 'Furniture depository', 'class', 'U103');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE02C', 'Galleries', 'class', 'U043');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01C-G', 'Gaming club', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01A -C', 'Gardens', 'class', 'U041');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01C-B', 'Gas showroom', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT01B', 'Gas distribution places', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT01A -A', 'Gas holder', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT01B -A', 'Gas pressure control station', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT01A', 'Gas production and storage places', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT01', 'Gas supply places', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT01A -B', 'Gas works', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01C-E', 'General hospital', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA03A -D', 'General chemical manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ST03A -B', 'General goods store', 'class', 'U103');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('OF01A', 'General offices', 'class', 'U102');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01B -E', 'General stores', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01C-F', 'Geriatric hospital', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06B -C', 'Glass house', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA06A -D', 'Glass manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03C-B', 'Golf course', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03C-A', 'Golf driving range', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR06', 'Goods handling places', 'class', 'U055');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA02A -H', 'Grain mill', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01A -C', 'Grass land', 'class', 'U131');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG08A', 'Grazing places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06A -C', 'Green forage crops place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG07A -C', 'Green forage crops store', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01A -H', 'Green grocer''s shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01A -I', 'Grocery and provision', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH02A -A', 'Grocery and provisions confectionery and drinks wholesaling', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS01', 'Group residences', 'class', 'U072');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03D-C', 'Gymnasium', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01A -E', 'Gypsum/Anhydrite working', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01B -F', 'Hairdresser''s shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM04A -B', 'Handicapped and disabled people''s home', 'class', 'U073');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG02A -B', 'Hatchery', 'class', 'U012');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05C-C', 'Hats, cap and millinery manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01', 'Health care places', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01A -G', 'Health centre', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01A -H', 'Hearing aid centre', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01A -D', 'Heath and moorland', 'class', 'U131');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH01B -B', 'Hides, skin and leather dealer''s place', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03A -D', 'Hockey ground', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE05A -B', 'Holiday camp site', 'class', 'U045');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE05A', 'Holiday camps', 'class', 'U045');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE05A -C', 'Holiday caravan site', 'class', 'U045');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06B -D', 'Hop field', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03 I -D', 'Horse racing course', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03 I -E', 'Horse show jumping, dressage and trotting arena', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03 I -F', 'Horse training area', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH01C-A', 'Horses and livestock dealer', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH01C', 'Horses and livestock dealing places', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06B', 'Horticultural places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05A -B', 'Hosiery and other knitted goods manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01C', 'Hospitals', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01A -J', 'Hot food shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS01A -B', 'Hotel', 'class', 'U072');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01C-C', 'Household goods shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01C', 'Household goods shops and showrooms', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03J -A', 'Hunting place', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03J', 'Hunting and shooting places', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03A -E', 'Hurling or shinty grounds', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01F', 'Hybrid shops and stores', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT02A -A', 'Hydro electricity generating station', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01F -C', 'Hypermarket', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03D-D', 'Ice rink', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01A -F', 'Igneous rock working', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ST01A -D', 'Industrial and office machinery store', 'class', 'U103');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH01B', 'Industrial materials and other machinery dealing places', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA10A -A', 'Industrial research laboratory', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04A -C', 'Industrial services equipment manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01B -A', 'Infant school', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04B', 'Instrument engineering places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04C-E', 'Insulated wires and cables manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('OF02A -C', 'Insurance office', 'class', 'U092');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA01B -C', 'Iron and steel manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01D-C', 'Iron ore handling installation', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG02B -C', 'Isolation (animal living place)', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01C-G', 'Isolation hospital', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04F -C', 'Jewellery and precious metal manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01B -B', 'Junior school', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM08', 'Justice administration places', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05A -C', 'Jute manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03C-B', 'Knackering place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05A -B', 'Knitted goods manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05A -D', 'Lace manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03A -F', 'Lacrosse ground', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03H-B', 'Land sailing area', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03', 'Land sport places', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02', 'Land transport places', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01', 'Land transport tracks', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03H', 'Land vehicle performance places', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT02B -C', 'Launderette', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT02B -D', 'Laundry (cleaning only)', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01B -G', 'Laundry, cleaning and repairing shop (receiving)', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM08A -B', 'Law court', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA01B -D', 'Lead manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05B -C', 'Leather (tanning and dressing) and fellmongery place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05B', 'Leather and fur goods manufacturing places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05B -B', 'Leather goods manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE02A -A', 'Lending library', 'class', 'U043');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE02A', 'Libraries', 'class', 'U043');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE02', 'Libraries, museums and galleries', 'class', 'U043');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM05B -E', 'Life boat station', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR05A -C', 'Lift', 'class', 'U055');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01F -B', 'Light railway', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01A -G', 'Limestone working', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA08A -B', 'Linoleum, plastics floor covering, leather cloth manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('DF01A -A', 'Live firing military training area', 'class', 'U121');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01E -C', 'Local distributor road', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('OF01A -B', 'Local government administration office', 'class', 'U102');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04E -B', 'Locomotives and railway track equipment manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02C-E', 'Long stay lorry park', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02B -D', 'Lorry transhipment park', 'class', 'U055');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA01A -B', 'Lubricating oil and grease manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05A -E', 'Made up textile manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT04A -A', 'Main drain', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01F -C', 'Main line', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT02', 'Maintenance and repair places', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS02A -D', 'Maisonette', 'class', 'U071');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05A -F', 'Man made fibre production manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('OF01A -C', 'Manufacturing administration office', 'class', 'U102');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA10A', 'Manufacturing research establishments', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA12A -A', 'Manufacturing storage place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA12A', 'Manufacturing storage places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA11A', 'Manufacturing waste disposal places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA11A -A', 'Manufacturing waste tip', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR04A -C', 'Marina', 'class', 'U056');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ST02', 'Material stores', 'class', 'U103');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01C-H', 'Maternity hospital', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04A', 'Mechanical engineering places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04A -D', 'Mechanical handling equipment manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR05A', 'Mechanical handling places', 'class', 'U055');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01B', 'Medical auxiliary service centres', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01A', 'Medical diagnosis and treatment centres', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM02A', 'Medical research establishments', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM02A -A', 'Medical research laboratory', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01C-I', 'Mental hospital', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01A -I', 'Mental clinic', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA01B', 'Metal processing places (basic forms)', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04A -E', 'Metal working machine tools manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01C-A', 'Middle school', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA02A -I', 'Milk and milk product manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03A -A', 'Milk extraction place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03A -B', 'Milk treatment place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG07A -F', 'Mill and mix building', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01B -B', 'Mineral excavation or pit (dry)', 'class', 'U112');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01C-C', 'Mineral excavation or pit (wet)', 'class', 'U131');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01', 'Mineral extraction places', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01D-E', 'Mineral fertiliser handling installation', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01F -D', 'Mineral line', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA01A -C', 'Mineral oil refinery', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03B -D', 'Miniature golf course', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA08A -C', 'Miscellaneous goods manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA08A -D', 'Miscellaneous stationers goods manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA07A -C', 'Miscellaneous wood and cork manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG08B -E', 'Mixed forest', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06B -E', 'Mixed market garden', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01B -B', 'Monument', 'class', 'U041');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR04A -D', 'Mooring', 'class', 'U056');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT07A -B', 'Mortuary', 'class', 'U064');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04E -C', 'Motor cycle, tricycle and pedal cycle manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01D-C', 'Motor vehicle dealer display area', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01D', 'Motor vehicle goods shops and filling stations', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT02A', 'Motor vehicle maintenance and repair places', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04E -D', 'Motor vehicle manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01E -E', 'Motor vehicle practice circuit', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03H-C', 'Motor vehicle racing track', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT02A -A', 'Motor vehicle repair garage', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01D-D', 'Motor vehicle sales', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01D-B', 'Motor vehicle spare parts and accessories', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01E -D', 'Motor vehicle testing circuit', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT02A -B', 'Motor vehicle testing station', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01E -F', 'Motorway (special road)', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS01C-A', 'Movable dwelling site', 'class', 'U071');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE02B -A', 'Museum', 'class', 'U043');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05A -G', 'Narrow fabric manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED02B -A', 'Nature reserve', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED02B', 'Nature reserves and sanctuaries', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08F -A', 'Navigational light beacon', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01A -J', 'Nervous disorders clinic', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG04A -A', 'Net fishery place', 'class', 'U012');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01C-H', 'Night club', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG08', 'Non cultivated places', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01D-D', 'Non ferrous ore handling installation', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM04', 'Non medical care places', 'class', 'U073');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM04A', 'Non medical homes', 'class', 'U073');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS02A -E', 'Non residential plus single dwelling', 'class', 'U071');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06B -F', 'Nursery', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01A -B', 'Nursery school', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED02A -B', 'Observatory', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01A -K', 'Occupational therapy and physiotherapy clinic', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01A -K', 'Off licence', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04A -F', 'Office machinery manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('OF', 'Offices', 'class', 'U102');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01D-F', 'Oil and gas handling installation', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01B -B', 'Oil and gas well head', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR05B -A', 'Oil pumping station', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM04A -C', 'Old people''s home', 'class', 'U073');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06B -G', 'Orchard with arable land', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06B -H', 'Orchard with grass', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06B -I', 'Orchard with market garden', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04A -G', 'Ordnance and small arms manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01C-J', 'Orthopaedic hosdpital', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01A -L', 'Orthopaedic and rheumatic clinic', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01A', 'Outdoor amenity places', 'class', 'U041');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05C-D', 'Overalls and men''s shirts and underwear manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA07B -B', 'Packaging products of paper and associated materials manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG07A -G', 'Packing and sorting (crop processing place)', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03D', 'Packing places (animal products)', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA03A -E', 'Paint manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA07B -C', 'Paper and board manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA07B', 'Paper, printing and publishing works', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01A -D', 'Park', 'class', 'U041');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG02A -C', 'Parturition place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01A -E', 'Peat, bog, freshwater marsh and swamp', 'class', 'U131');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA07B -D', 'Periodical and newspaper printing and publishing works', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG08A -A', 'Permanent pasture', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT02B', 'Personal and household goods repair and cleaning places', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01B -H', 'Pet animal and bird shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01D-E', 'Petrol and oil filling station', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH02B -A', 'Petroleum products wholesaling place', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA03A -F', 'Pharmaceutical chemicals and preparation manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04B -A', 'Photographic and document copying equipment manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01B -I', 'Photographic service shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01A -E', 'Picnic site', 'class', 'U041');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR05B -B', 'Pipeline', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM07A -A', 'Place of worship', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM07A', 'Places of worship', 'class', 'U082');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM05B -D', 'Police station', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03A -G', 'Polo ground', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01F -D', 'Polytechnic', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01C-D', 'Pond or lake', 'class', 'U131');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01C-C', 'Pony trekking route', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01B -J', 'Post office', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08A', 'Postal service places', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08', 'Postal service, signalling and telecommunications places', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08A -A', 'Postal sorting depot', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG04A -B', 'Pot and other inshore or estuarial fishing place', 'class', 'U012');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA06A -E', 'Pottery manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE04B -C', 'Power craft water', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01A', 'Pre primary schools', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01A -B', 'Precinct', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01E -G', 'Primary distributor road', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01B', 'Primary schools', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04A -H', 'Prime movers manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM05A -C', 'Prison', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM05A -D', 'Prison rehabilitation centre', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03C-C', 'Processing place (animal slaughtering place)', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01E -H', 'Processional route (road)', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01A -C', 'Processional route (walking or marching)', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('OF01A -D', 'Professional services office', 'class', 'U102');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01B -C', 'Protected land (unused)', 'class', 'U111');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM05B', 'Protection places', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM03A -A', 'Public bath', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM03A -B', 'Public convenience', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT03A -A', 'Public house', 'class', 'U094');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06A -D', 'Pulse crops place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG07A -D', 'Pulse crops store', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04A -I', 'Pumps, valves and compressor manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS02A -F', 'Purpose built block of flats', 'class', 'U071');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG01B -C', 'Quarantine place, animal', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08C-A', 'Radar beacon', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08C', 'Radar places', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08C-B', 'Radar station', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04C-F', 'Radio and electronic capital goods manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08D-B', 'Radio and television mast', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08D-A', 'Radio station', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04C-G', 'Radio, radar and electronic capital goods manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01B -E', 'Radiography centre', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04E -E', 'Railway carriages and wagons and trams manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02B -E', 'Railway goods siding', 'class', 'U055');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02B -F', 'Railway goods yard', 'class', 'U055');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02C-F', 'Railway sidings', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02B -G', 'Railway sorting depot', 'class', 'U055');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02A -H', 'Railway station', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01F', 'Railways', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03F -B', 'Rambling and fell walking', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG02B -D', 'Rearing pond', 'class', 'U012');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE', 'Recreation and leisure places', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01A -F', 'Recreational open space', 'class', 'U041');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE02A -B', 'Reference', 'class', 'U043');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ST03A -C', 'Refrigerated store', 'class', 'U103');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT05A', 'Refuse disposal places', 'class', 'U063');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT05', 'Refuse disposal places', 'class', 'U063');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT05A -A', 'Refuse disposal plant', 'class', 'U063');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT05A -B', 'Refuse tip', 'class', 'U063');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM05A -E', 'Remand centre', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM05A -F', 'Remand classifying centre', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM05A -G', 'Remand home', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED02A', 'Research establishments', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED02', 'Research places', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT03A -A', 'Reservoir', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS', 'Residences', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS01C-B', 'Residential caravan site', 'class', 'U071');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS01A -C', 'Residential club', 'class', 'U072');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS01B -B', 'Residential retreat', 'class', 'U073');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT03B -A', 'Restaurant', 'class', 'U093');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01', 'Retail distribution places', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT', 'Retail distribution and servicing places', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01E -A', 'Retail market place', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01C-D', 'Ride', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR03A -B', 'River', 'class', 'U056');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03E -C', 'Road running and walking course', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01E', 'Roads', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03F -C', 'Rock climbing', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG04A -C', 'Rod and line fishery place', 'class', 'U012');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE04C-A', 'Rod/recreational fishing place', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03D-E', 'Roller skating rink', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS01A -D', 'Rooming house', 'class', 'U072');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06A -E', 'Root crops place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG07A -E', 'Root crops store', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05A -H', 'Rope, twine and net manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG08A -B', 'Rough grazing', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE04B -D', 'Rowing water', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA08A -E', 'Rubber goods manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03A -H', 'Rugby football ground', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL02A -A', 'Ruined building', 'class', 'U112');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE04B -E', 'Sailing', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01B -C', 'Salt and brine pumping installation', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01A -F', 'Salt marsh (unused)', 'class', 'U131');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01A -H', 'Sand and gravel working', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01A -I', 'Sandstone working', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM03', 'Sanitation places', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM03A', 'Sanitation places', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08E -A', 'Satellite communication station', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS01B -C', 'School boarding house', 'class', 'U073');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04B -C', 'Scientific and industrial instruments and systems manufacturing', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH01B -C', 'Scrap and waste dealer', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01D-A', 'Secondary school', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01E -I', 'Secondary distributor road', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01D', 'Secondary schools', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS02', 'Self contained residences', 'class', 'U071');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS02A -G', 'Semi detached house', 'class', 'U071');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG02A -D', 'Service pen', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT04', 'Sewage disposal places', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT04A', 'Sewage draining places', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT04B -A', 'Sewage farm', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT04A -B', 'Sewage pumping station', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT04B', 'Sewage treatment places', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT04B -B', 'Sewage treatment works', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02A -I', 'Ship passenger terminal', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04D-A', 'Shipbuilding and marine engineering place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03J -B', 'Shooting and stalking area', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA07A -D', 'Shop and office fittings manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01D', 'Show places', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08F -C', 'Signalling station', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01A -K', 'Silica and moulding sand working', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED02B -B', 'Site of special scientific interest', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01D-B', 'Sixth form college', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03E -D', 'Skiing and tobogganing run', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01A -L', 'Slate working', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01C-C', 'Slate waste tip', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03G-B', 'Small arms range', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04F -E', 'Small tools, implements and gauges manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA03A -G', 'Soap, detergent and fat splitting and distillation manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM06B', 'Social meeting places', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA02A -J', 'Soft drinks manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06B -J', 'Soft fruit place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01E -A', 'Special school', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01F', 'Specialised, higher and further education centres', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05A -I', 'Spinning and doubling (cotton and flax systems) manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01B -D', 'Spoilt land', 'class', 'U112');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ST01A -E', 'Sports equipment store', 'class', 'U103');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03B -E', 'Squash court', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS01B -D', 'Staff hostel', 'class', 'U073');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA07B -A', 'Stationery manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ST', 'Storage', 'class', 'U103');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02C', 'Storage places for vehicles', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR04A', 'Storage places for water craft', 'class', 'U056');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('OF04A -A', 'Studio', 'class', 'U102');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA02A -K', 'Sugar refinery', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01F -D', 'Supermarket', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01B', 'Surface installations for underground mineral workings', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01A', 'Surface mineral workings', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM01A -M', 'Surgeon''s surgery and consulting room', 'class', 'U081');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04B -B', 'Surgical instruments and appliances manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE04A', 'Swimming and bathing', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE04A -A', 'Swimming baths', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA03A -H', 'Synthetic resins, plastics and synthetic rubber manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05C-E', 'Tailored outerwear manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03G', 'Target shooting places', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01F -E', 'Teacher training college', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01F -F', 'Technical college', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04C-H', 'Telegraph and telephone apparatus and equipment manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08B -A', 'Telephone cableway', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08B -B', 'Telephone exchange', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08B -C', 'Telephone kiosk', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08D', 'Television and radio broadcasting places', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT08D-C', 'Television station', 'class', 'U065');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03B -G', 'Ten pin bowling alley', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE03B -F', 'Tennis court', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02B', 'Terminals and interchanges for goods', 'class', 'U055');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR02A', 'Terminals and interchanges for people', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RS02A -H', 'Terraced house', 'class', 'U071');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05A -J', 'Textile finishing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04A -J', 'Textile machinery and accessories manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05A', 'Textile manufacturing places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01D-G', 'Theatre', 'class', 'U042');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT02A -B', 'Thermal electricity generating station', 'class', 'U061');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01B -K', 'Ticket agency', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA07A', 'Timber and furniture works', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH01B -D', 'Timber dealer''s place', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA07', 'Timber furniture, paper, printing and publishing works', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA07A -E', 'Timber works', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA02A -L', 'Tobacco manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA03A -I', 'Toilet preparation manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA08A -F', 'Toys, games, children''s carriages and sports equipment manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01F -E', 'Tramway', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR', 'Transport tracks and places', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01B -L', 'Travel agency', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG08B -F', 'Tree nursery', 'class', 'U021');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('CM08A -C', 'Tribunal place', 'class', 'U084');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01A -L', 'Tripe shop', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01D-F', 'Tyre retailing and fitting place', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01F -F', 'Underground line', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('RT01B -M', 'Undertaker', 'class', 'U091');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('ED01F -G', 'University teaching establishment', 'class', 'U083');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL02A', 'Unused buildings', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01B', 'Unused formerly developed land', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01', 'Unused land and water', 'class', 'U131');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01A', 'Unused land in natural or semi natural state', 'class', 'U131');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01C', 'Unused water', 'class', 'U131');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT', 'Utility services', 'class', NULL);

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL02A -B', 'Vacant building', 'class', 'U111');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG07A -H', 'Vegetable (crop conditioning and storage)', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG06B -K', 'Vegetable field', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA02A -M', 'Vegetable, animal oil and fat manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04E', 'Vehicle engineering places', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01A -M', 'Vein mineral working', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01C-D', 'Vein mineral waste tip and settlement lagoon', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG01B -D', 'Veterinary hospital', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG01B -E', 'Veterinary surgery', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01A -G', 'View point', 'class', 'U041');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR01A -D', 'Walkway', 'class', 'U051');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MI01C', 'Waste disposal areas from mineral working and processing', 'class', 'U031');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01B -E', 'Waste heap or tip', 'class', 'U112');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04B -D', 'Watches and clocks manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01C-E', 'Water course', 'class', 'U131');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT03B', 'Water distribution places', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT03C', 'Water extraction places', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT03C-B', 'Water intake from rivers or streams', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT03C-A', 'Water intake from springs', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT03C-C', 'Water intake from underground sources', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT03B -B', 'Water pipeline', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT03B -A', 'Water pumping station', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE04C', 'Water recreation places', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE04B -F', 'Water skiing place', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE04', 'Water sport places', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT03A', 'Water storage and treatment places', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT03', 'Water supply places', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT03A -B', 'Water tower', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR03A', 'Water tracks', 'class', 'U056');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR04', 'Water transport places', 'class', 'U056');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('TR03', 'Water transport tracks', 'class', 'U056');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UT03A -C', 'Water treatment works', 'class', 'U062');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE04B', 'Watercraft places', 'class', 'U044');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05C-F', 'Weatherproof outerwear manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05A -K', 'Weaving of cotton, linen and man made fibres manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG02B -E', 'Weighing place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04E -F', 'Wheeled tractor manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('WH02', 'Wholesale distribution places', 'class', 'U104');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG04', 'Wild life capturing places', 'class', 'U012');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA04F -F', 'Wire manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA07A -F', 'Wooden containers and baskets manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('UL01A -G', 'Woodland and scrub', 'class', 'U131');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03B -A', 'Wool grading place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('AG03B -B', 'Wool removal place', 'class', 'U011');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('MA05A -L', 'Woollen and worsted manufacturing place', 'class', 'U101');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE05A -D', 'Youth hostel', 'class', 'U045');

INSERT INTO landuse_classifications (landuse_id, description, level, parent)
    VALUES ('LE01A -A', 'Zoological garden', 'class', 'U041');
=======
-- Land use, single or mutiple classes?
ALTER TABLE buildings ADD COLUMN IF NOT EXISTS landuse_mutiple_use boolean DEFAULT false;

-- Land use, how many different uses?
--TODO should there be an upper limite (yes) on number of landuses in a building seems unlikley to me more than 5 (ie. Shop, office, resi but shopping center/train station could be the exception to this )
ALTER TABLE buildings ADD COLUMN IF NOT EXISTS landuse_number_of_uses SMALLINT CHECK (landuse_number_of_uses between 1 and 20) DEFAULT 1;


--should really be called this nlud_landuse_classifications
--TODO move this to new migration for bulksources up and down
DROP TABLE IF EXISTS bulk_sources.buildings_landuse;

CREATE TABLE bulk_sources.buildings_landuse(
   landuse_id  VARCHAR(9) NOT NULL
  ,description VARCHAR(74) NOT NULL
  ,level       VARCHAR(5) NOT NULL
  ,parent_id   VARCHAR(4)
  ,parent_name VARCHAR(28)
  ,is_used     VARCHAR(1)
);

INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U010','Agriculture And Fisheries','order',NULL,NULL,NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U080','Community Services','order',NULL,NULL,NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U120','Defence','order',NULL,NULL,NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U020','Forestry','order',NULL,NULL,NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U100','Industry And Business','order',NULL,NULL,NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U030','Minerals','order',NULL,NULL,NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U040','Recreation And Leisure','order',NULL,NULL,NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U070','Residential','order',NULL,NULL,NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U090','Retail','order',NULL,NULL,NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U050','Transport','order',NULL,NULL,NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U130','Unused Land','order',NULL,NULL,NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U060','Utilities And Infrastructure','order',NULL,NULL,NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U110','Vacant And Derelict','order',NULL,NULL,NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U011','Agriculture','group','U010','Agriculture And Fisheries',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U012','Fisheries','group','U010','Agriculture And Fisheries',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U021','Managed forest','group','U020','Forestry',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U022','Un-managed forest','group','U020','Forestry',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U031','Mineral workings and quarries','group','U030','Minerals',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U041','Outdoor amenity and open spaces','group','U040','Recreation And Leisure',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U042','Amusement and show places','group','U040','Recreation And Leisure',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U043','Libraries, museums and galleries','group','U040','Recreation And Leisure',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U044','Sports facilities and grounds','group','U040','Recreation And Leisure',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U045','Holiday parks and camps','group','U040','Recreation And Leisure',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U046','Allotments and city farms','group','U040','Recreation And Leisure',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U051','Transport tracks and ways','group','U050','Transport',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U054','Transport terminals and interchanges','group','U050','Transport',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U053','Car parks','group','U050','Transport',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U051','Vehicle storage','group','U050','Transport',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U055','Goods and freight terminals','group','U050','Transport',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U056','Waterways','group','U050','Transport',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U061','Energy production and distribution','group','U060','Utilities And Infrastructure',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U062','Water storage and treatment','group','U060','Utilities And Infrastructure',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U063','Refuse disposal','group','U060','Utilities And Infrastructure',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U064','Cemeteries and crematoria','group','U060','Utilities And Infrastructure',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U065','Post and telecommunications','group','U060','Utilities And Infrastructure',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U071','Dwellings','group','U070','Residential',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U072','Hotels, boarding and guest houses','group','U070','Residential',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U073','Residential institutions','group','U070','Residential',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U081','Medical and health care services','group','U080','Community Services',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U082','Places of worship','group','U080','Community Services',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U083','Education','group','U080','Community Services',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U084','Community services','group','U080','Community Services',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U091','Shops','group','U090','Retail',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U092','Financial and professional services','group','U090','Retail',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U093','Restaurants and cafes','group','U090','Retail',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U094','Public houses, bars and nightclubs','group','U090','Retail',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U101','Manufacturing','group','U100','Industry And Business',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U102','Offices','group','U100','Industry And Business',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U103','Storage','group','U100','Industry And Business',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U104','Wholesale distribution','group','U100','Industry And Business',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U111','Vacant','group','U110','Previously Developed Land',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U112','Derelict','group','U110','Previously Developed Land',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U121','Defence','group','U120','Defence',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('U131','Unused land','group','U130','Unused Land',NULL);
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG05A -A','Agricultural research establishment','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG','Agriculture and fisheries places','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG01A -A','Animal artificial insemination centre','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG01B -A','Animal boarding establishment','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG02A','Animal breeding places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG01B -B','Animal clipping and manicure establishment','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG01A -B','Animal dipping place','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG02','Animal living places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03A','Animal milking places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03','Animal product processing places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03F -A','Animal product waste store','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03F -B','Animal product waste treatment places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03F','Animal products waste handling places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG02B','Animal rearing places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG01A','Animal service places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG01','Animal service places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03B','Animal shearing places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03C','Animal slaughtering places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03C-A','Animal stunning and killing places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG01B','Animal welfare places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06A','Arable farm places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG02B -A','Bedding and waste removal','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG01A -C','Blacksmith premises','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06A -A','Cereal crops','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG07A -A','Cereal crops store','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG07A','Crop conditioning grading and storage places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG07','Crop processing places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06','Cultivated places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03D-A','Egg grading place','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06A -B','Fallow land','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03E','Feed handling places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03E -A','Feed preparation place','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03E -B','Feed storage place','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG02B -B','Feeding','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03D-B','Fish sorting place','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06B -B','Flower bed','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG07A -B','Fruit crops','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06B -C','Glass house','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG08A','Grazing places','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06A -C','Green forage crops place','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG07A -C','Green forage crops store','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06B -D','Hop field','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06B','Horticultural places','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG02B -C','Isolation (animal living place)','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03C-B','Knackering place','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03A -A','Milk extraction place','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03A -B','Milk treatment place','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG07A -F','Mill and mix building','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06B -E','Mixed market garden','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG08','Non cultivated places','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06B -F','Nursery','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06B -G','Orchard with arable land','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06B -H','Orchard with grass','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06B -I','Orchard with market garden','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG07A -G','Packing and sorting (crop processing place)','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03D','Packing places (animal products)','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG02A -C','Parturition place','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG08A -A','Permanent pasture','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03C-C','Processing place (animal slaughtering place)','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06A -D','Pulse crops place','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG07A -D','Pulse crops store','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG01B -C','Quarantine place, animal','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06A -E','Root crops place','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG07A -E','Root crops store','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG08A -B','Rough grazing','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG02A -D','Service pen','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06B -J','Soft fruit place','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG07A -H','Vegetable (crop conditioning and storage)','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06B -K','Vegetable field','class','U011',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG01B -D','Veterinary hospital','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG01B -E','Veterinary surgery','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG02B -E','Weighing place','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03B -A','Wool grading place','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG03B -B','Wool removal place','class','U011',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG02A -A','Fish farm','class','U012',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG04A','Fishery places','class','U012',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG02A -B','Hatchery','class','U012',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG04A -A','Net fishery place','class','U012',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG04A -B','Pot and other inshore or estuarial fishing place','class','U012',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG02B -D','Rearing pond','class','U012',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG04A -C','Rod and line fishery place','class','U012',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG04','Wild life capturing places','class','U012',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA06A -A','Abrasives and other building materials manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04E -A','Aerospace equipment manufacturing or repairing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04A -A','Agricultural machinery manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA01B -A','Aluminium and aluminium alloy manufacturing','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA02A -A','Animal and poultry food manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA02A -B','Bacon curing, meat and fish product manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA07A -A','Bedding and soft furnishings manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA02A -C','Biscuit manufacturing','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04F -D','Bolts, nuts, screws, rivets etc. manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA02A -D','Bread and flour confectionery manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA02A -E','Brewery','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA06A -B','Bricks, fireclay and refractory goods manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA06A','Bricks, pottery, glass, cement manufacturing places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04C-A','Broadcast receiving and sound reproducing equipment manufacturing','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA08A -A','Brushes and brooms manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04F -A','Can and metal box manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05A -A','Carpet manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA06A -C','Cement manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA03A','Chemical and allied industries manufacturing places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05C','Clothing and footwear manufacturing places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05','Clothing, textiles, leather, footwear and fur goods manufacturing places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA01A','Coal and petroleum processing places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA01','Coal, oil and metal processing places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA02A -F','Cocoa, chocolate and sugar confectionery manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA01A -A','Coke ovens and solid fuel manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA09A -A','Construction and demolition site','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04A -B','Construction and earth moving equipment manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA09','Construction places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA09A','Construction places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA01B -B','Copper, brass and other copper alloy manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04F -B','Cutlery and plated tableware manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05C-A','Dresses, lingerie, infants wear etc. manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA03A -A','Dyestuffs and pigments manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04C-B','Electric appliances primarily for domestic use manufacturing places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04C','Electrical engineering places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04C-C','Electrical machinery manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04C-D','Electronic computers manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04','Engineering places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA03A -B','Explosives and fireworks manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA03A -C','Fertilizer manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA02A','Food, drink and tobacco manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05C-B','Footwear manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA02A -G','Fruit and vegetable product manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05B -A','Fur goods manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA07A -B','Furniture and upholstery manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA03A -D','General chemical manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA06A -D','Glass manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA02A -H','Grain mill','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05C-C','Hats, cap and millinery manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05A -B','Hosiery and other knitted goods manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA10A -A','Industrial research laboratory','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04A -C','Industrial services equipment manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04B','Instrument engineering places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04C-E','Insulated wires and cables manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA01B -C','Iron and steel manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04F -C','Jewellery and precious metal manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05A -C','Jute manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05A -B','Knitted goods manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05A -D','Lace manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA01B -D','Lead manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05B -C','Leather (tanning and dressing) and fellmongery place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05B','Leather and fur goods manufacturing places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05B -B','Leather goods manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA08A -B','Linoleum, plastics floor covering, leather cloth manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04E -B','Locomotives and railway track equipment manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA01A -B','Lubricating oil and grease manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05A -E','Made up textile manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05A -F','Man made fibre production manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA10A','Manufacturing research establishments','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA12A -A','Manufacturing storage place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA12A','Manufacturing storage places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA11A','Manufacturing waste disposal places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA11A -A','Manufacturing waste tip','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04A','Mechanical engineering places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04A -D','Mechanical handling equipment manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA01B','Metal processing places (basic forms)','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04A -E','Metal working machine tools manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA02A -I','Milk and milk product manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA01A -C','Mineral oil refinery','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA08A -C','Miscellaneous goods manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA08A -D','Miscellaneous stationers goods manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA07A -C','Miscellaneous wood and cork manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04E -C','Motor cycle, tricycle and pedal cycle manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04E -D','Motor vehicle manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05A -G','Narrow fabric manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04A -F','Office machinery manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04A -G','Ordnance and small arms manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05C-D','Overalls and men''s shirts and underwear manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA07B -B','Packaging products of paper and associated materials manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA03A -E','Paint manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA07B -C','Paper and board manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA07B','Paper, printing and publishing works','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA07B -D','Periodical and newspaper printing and publishing works','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA03A -F','Pharmaceutical chemicals and preparation manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04B -A','Photographic and document copying equipment manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA06A -E','Pottery manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04A -H','Prime movers manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04A -I','Pumps, valves and compressor manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04C-F','Radio and electronic capital goods manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04C-G','Radio, radar and electronic capital goods manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04E -E','Railway carriages and wagons and trams manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05A -H','Rope, twine and net manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA08A -E','Rubber goods manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04B -C','Scientific and industrial instruments and systems manufacturing','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04D-A','Shipbuilding and marine engineering place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA07A -D','Shop and office fittings manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04F -E','Small tools, implements and gauges manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA03A -G','Soap, detergent and fat splitting and distillation manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA02A -J','Soft drinks manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05A -I','Spinning and doubling (cotton and flax systems) manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA07B -A','Stationery manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA02A -K','Sugar refinery','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04B -B','Surgical instruments and appliances manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA03A -H','Synthetic resins, plastics and synthetic rubber manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05C-E','Tailored outerwear manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04C-H','Telegraph and telephone apparatus and equipment manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05A -J','Textile finishing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04A -J','Textile machinery and accessories manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05A','Textile manufacturing places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA07A','Timber and furniture works','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA07','Timber furniture, paper, printing and publishing works','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA07A -E','Timber works','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA02A -L','Tobacco manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA03A -I','Toilet preparation manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA08A -F','Toys, games, children''s carriages and sports equipment manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA02A -M','Vegetable, animal oil and fat manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04E','Vehicle engineering places','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04B -D','Watches and clocks manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05C-F','Weatherproof outerwear manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05A -K','Weaving of cotton, linen and man made fibres manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04E -F','Wheeled tractor manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA04F -F','Wire manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA07A -F','Wooden containers and baskets manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MA05A -L','Woollen and worsted manufacturing place','class','U101',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('OF03A -A','Business discussion places','class','U102',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('OF03A','Business meeting places','class','U102',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('OF03','Business meeting places','class','U102',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('OF01A -A','Central government administration office','class','U102',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('OF01A','General offices','class','U102',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('OF01A -B','Local government administration office','class','U102',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('OF01A -C','Manufacturing administration office','class','U102',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('OF','Offices','class','U102',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('OF01A -D','Professional services office','class','U102',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('OF04A -A','Studio','class','U102',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ST01A -A','Agricultural machinery store','class','U103',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ST02A -A','Builders yard','class','U103',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ST01A -B','Building equipment store','class','U103',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ST02A','Bulk material stores','class','U103',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ST02A -B','Cleaning materials store','class','U103',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ST01A -C','Engineering equipment store','class','U103',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ST01A','Equipment stores','class','U103',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ST03A -A','Furniture depository','class','U103',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ST03A -B','General goods store','class','U103',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ST01A -D','Industrial and office machinery store','class','U103',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ST02','Material stores','class','U103',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ST03A -C','Refrigerated store','class','U103',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ST01A -E','Sports equipment store','class','U103',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ST','Storage','class','U103',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH01B -A','Agricultural machinery dealer’s place','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH01A -C','Builders merchant''s place','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH01A','Bulk dealing places','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH01A -A','Coal and oil dealer''s place','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH01A -B','Corn, seed and agricultural supplies dealer''s place','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH01','Dealing in industrial materials, machinery and livestock places','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH02A','Food and drink wholesaling places','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH02A -A','Grocery and provisions confectionery and drinks wholesaling','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH01B -B','Hides, skin and leather dealer''s place','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH01C-A','Horses and livestock dealer','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH01C','Horses and livestock dealing places','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH01B','Industrial materials and other machinery dealing places','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH02B -A','Petroleum products wholesaling place','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH01B -C','Scrap and waste dealer','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH01B -D','Timber dealer''s place','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('WH02','Wholesale distribution places','class','U104',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL02A','Unused buildings','class','U111',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01B','Unused formerly developed land','class','U111',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01B -A','Cleared site','class','U111',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01B -C','Protected land (unused)','class','U111',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL02A -B','Vacant building','class','U111',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL02A -A','Abandoned building','class','U112',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01B -B','Mineral excavation or pit (dry)','class','U112',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL02A -A','Ruined building','class','U112',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01B -D','Spoilt land','class','U112',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01B -E','Waste heap or tip','class','U112',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('DF01','Defence establishments','class','U121',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('DF01A','Defence training places','class','U121',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('DF01A -A','Live firing military training area','class','U121',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01A -A','Beach or sand dune','class','U131',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01C-A','Canal (unused)','class','U131',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01A -B','Cliff or natural outcrop','class','U131',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01C-B','Dock (unused)','class','U131',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01A -C','Grass land','class','U131',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01A -D','Heath and moorland','class','U131',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01C-C','Mineral excavation or pit (wet)','class','U131',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01A -E','Peat, bog, freshwater marsh and swamp','class','U131',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01C-D','Pond or lake','class','U131',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01A -F','Salt marsh (unused)','class','U131',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01','Unused land and water','class','U131',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01A','Unused land in natural or semi natural state','class','U131',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01C','Unused water','class','U131',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01C-E','Water course','class','U131',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UL01A -G','Woodland and scrub','class','U131',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG08B -A','Coniferous forest','class','U022',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG08B -D','Deciduous forest','class','U022',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG08B','Forestry places','class','U022',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG08B -E','Mixed forest','class','U022',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG08B -B','Coppice','class','U021',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG08B -C','Coppice with standards','class','U021',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG08B -F','Tree nursery','class','U021',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01D-A','Aggregate and stone handling installation','class','U031',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01A -A','Chalk working','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01A -B','China clay working','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01C-A','China clay waste tip and settlement lagoon','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01A -C','Clay and shale working','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01A -D','Coal mine working','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01D-B','Coal handling installation','class','U031',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01C-B','Coal waste tip and settlement lagoon','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01B -A','Colliery headgear','class','U031',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01A -E','Gypsum/Anhydrite working','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01A -F','Igneous rock working','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01D-C','Iron ore handling installation','class','U031',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01A -G','Limestone working','class','U031',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01','Mineral extraction places','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01D-E','Mineral fertiliser handling installation','class','U031',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01D-D','Non ferrous ore handling installation','class','U031',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01D-F','Oil and gas handling installation','class','U031',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01B -B','Oil and gas well head','class','U031',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01B -C','Salt and brine pumping installation','class','U031',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01A -H','Sand and gravel working','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01A -I','Sandstone working','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01A -K','Silica and moulding sand working','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01A -L','Slate working','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01C-C','Slate waste tip','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01B','Surface installations for underground mineral workings','class','U031',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01A','Surface mineral workings','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01A -M','Vein mineral working','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01C-D','Vein mineral waste tip and settlement lagoon','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('MI01C','Waste disposal areas from mineral working and processing','class','U031',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01','Amenity, amusement and show places','class','#N/A',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE','Recreation and leisure places','class','#N/A',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01B -A','Ancient monument','class','U041',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01A -A','Botanical garden','class','U041',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01A -B','Country park','class','U041',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01A -C','Gardens','class','U041',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01B -B','Monument','class','U041',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01A','Outdoor amenity places','class','U041',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01A -D','Park','class','U041',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01A -E','Picnic site','class','U041',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01A -F','Recreational open space','class','U041',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01A -G','View point','class','U041',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01A -A','Zoological garden','class','U041',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01C','Amusement places','class','U042',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01C-A','Aquarium','class','U042',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01C-C','Bingo club','class','U042',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01D-A','Broadcasting, filming and sound recording studio','class','U042',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01C-D','Children''s playground','class','U042',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01D-B','Cinema','class','U042',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01D-C','Circus','class','U042',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01D-D','Concert arena','class','U042',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01D-E','Countryside interpretation centre','class','U042',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01C-E','Dance hall','class','U042',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01D-F','Display arena','class','U042',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01C-F','Fun fair','class','U042',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01C-G','Gaming club','class','U042',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01C-H','Night club','class','U042',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01D','Show places','class','U042',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01D-G','Theatre','class','U042',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE02C-A','Art gallery','class','U043',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE02C','Galleries','class','U043',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE02A -A','Lending library','class','U043',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE02A','Libraries','class','U043',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE02','Libraries, museums and galleries','class','U043',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE02B -A','Museum','class','U043',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE02A -B','Reference','class','U043',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03 I','Animal training and competing places','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03G-A','Archery range','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03A -A','Association football ground','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03E','Athletic game courses','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03D','Athletic games arenas','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03D-A','Athletic ground','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03B -A','Badminton court','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03C','Ball game courses','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03B','Ball game greens and courts','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03A','Ball game pitches and grounds','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03A -B','Baseball ground','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE04B -A','Boating facilities','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03E -A','Bobsleigh course','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03B -B','Bowling green','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE04B -B','Canoeing water','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03F -A','Caving place','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03F','Climbing, rambling and caving places','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03D-B','Combative sports place','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03A -C','Cricket ground','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03B -C','Croquet lawn','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03 I -A','Cross country horse trial course','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03E -B','Cross country running course','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03H-A','Cycling circuit','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03 I -B','Dog racing track','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03 I -C','Dog trials area','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03C-B','Golf course','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03C-A','Golf driving range','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03D-C','Gymnasium','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03A -D','Hockey ground','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03 I -D','Horse racing course','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03 I -E','Horse show jumping, dressage and trotting arena','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03 I -F','Horse training area','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03J -A','Hunting place','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03J','Hunting and shooting places','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03A -E','Hurling or shinty grounds','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03D-D','Ice rink','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03A -F','Lacrosse ground','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03H-B','Land sailing area','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03','Land sport places','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03H','Land vehicle performance places','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03B -D','Miniature golf course','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03H-C','Motor vehicle racing track','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03A -G','Polo ground','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE04B -C','Power craft water','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03F -B','Rambling and fell walking','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03E -C','Road running and walking course','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03F -C','Rock climbing','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE04C-A','Rod/recreational fishing place','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03D-E','Roller skating rink','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE04B -D','Rowing water','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03A -H','Rugby football ground','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE04B -E','Sailing','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03J -B','Shooting and stalking area','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03E -D','Skiing and tobogganing run','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03G-B','Small arms range','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03B -E','Squash court','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE04A','Swimming and bathing','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE04A -A','Swimming baths','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03G','Target shooting places','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03B -G','Ten pin bowling alley','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE03B -F','Tennis court','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE04C','Water recreation places','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE04B -F','Water skiing place','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE04','Water sport places','class','U044',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE04B','Watercraft places','class','U044',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE05A -A','Camping site','class','U045',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE05A -B','Holiday camp site','class','U045',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE05A','Holiday camps','class','U045',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE05A -C','Holiday caravan site','class','U045',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE05A -D','Youth hostel','class','U045',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('AG06B -A','Allotment gardens','class','U046',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02C','Storage places for vehicles','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR','Transport tracks and places','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01E -A','Access road','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01E -B','All purpose road','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01F -A','Branch line','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01C-A','Bridleway','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01D-A','Bus only way','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01D-B','Bus way','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01B -A','Cycle track','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01C-B','Drovers way','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01A -A','Footpath','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01','Land transport tracks','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01F -B','Light railway','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01E -C','Local distributor road','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01F -C','Main line','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01F -D','Mineral line','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01E -E','Motor vehicle practice circuit','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01E -D','Motor vehicle testing circuit','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01E -F','Motorway (special road)','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01C-C','Pony trekking route','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01A -B','Precinct','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01E -G','Primary distributor road','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01E -H','Processional route (road)','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01A -C','Processional route (walking or marching)','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01F','Railways','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01C-D','Ride','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01E','Roads','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01E -I','Secondary distributor road','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01F -E','Tramway','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01F -F','Underground line','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR01A -D','Walkway','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02A -A','Aerial ropeway passenger terminal','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02A -B','Air passenger terminal','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02A -C','Airport','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02A -D','Bus station','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02A -E','Bus stop','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02A -F','Car park','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02A -G','Coach station','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02','Land transport places','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02A -H','Railway station','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02A -I','Ship passenger terminal','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02A','Terminals and interchanges for people','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02C-C','Car storage place','class','U053',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02C-A','Aircraft hangar','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02C-B','Bus depot','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02C-D','Coach depot','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02C-E','Long stay lorry park','class','U051',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02C-F','Railway sidings','class','U051',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR05A -A','Aerial ropeway','class','U055',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02B -A','Air freight terminal','class','U055',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02B -B','Container depot','class','U055',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR05A -B','Conveyor','class','U055',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR06A -A','Customs depot','class','U055',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02B -C','Docks','class','U055',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR06','Goods handling places','class','U055',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR05A -C','Lift','class','U055',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02B -D','Lorry transhipment park','class','U055',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR05A','Mechanical handling places','class','U055',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02B -E','Railway goods siding','class','U055',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02B -F','Railway goods yard','class','U055',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02B -G','Railway sorting depot','class','U055',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR02B','Terminals and interchanges for goods','class','U055',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR04A -A','Anchorage','class','U056',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR04A -B','Boatyard','class','U056',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR03A -A','Canal','class','U056',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR04A -C','Marina','class','U056',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR04A -D','Mooring','class','U056',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR03A -B','River','class','U056',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR04A','Storage places for water craft','class','U056',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR03A','Water tracks','class','U056',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR04','Water transport places','class','U056',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR03','Water transport tracks','class','U056',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT','Utility services','class','#N/A',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT06A','District heating places','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT06A -A','District heating plant','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT02B -A','Electricity cableway','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT02B','Electricity distribution places','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT02A','Electricity production places','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT02','Electricity supply places','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT02B -B','Electricity transformer station','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT01B','Gas distribution places','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT01A -A','Gas holder','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT01B -A','Gas pressure control station','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT01A','Gas production and storage places','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT01','Gas supply places','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT01A -B','Gas works','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT02A -A','Hydro electricity generating station','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR05B -A','Oil pumping station','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('TR05B -B','Pipeline','class','U061',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT02A -B','Thermal electricity generating station','class','U061',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT04A -A','Main drain','class','U062',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT03A -A','Reservoir','class','U062',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT04','Sewage disposal places','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT04A','Sewage draining places','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT04B -A','Sewage farm','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT04A -B','Sewage pumping station','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT04B','Sewage treatment places','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT04B -B','Sewage treatment works','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT03B','Water distribution places','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT03C','Water extraction places','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT03C-B','Water intake from rivers or streams','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT03C-A','Water intake from springs','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT03C-C','Water intake from underground sources','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT03B -B','Water pipeline','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT03B -A','Water pumping station','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT03A','Water storage and treatment places','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT03','Water supply places','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT03A -B','Water tower','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT03A -C','Water treatment works','class','U062',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT05A','Refuse disposal places','class','U063',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT05','Refuse disposal places','class','U063',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT05A -A','Refuse disposal plant','class','U063',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT05A -B','Refuse tip','class','U063',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT07B -A','Cemetery','class','U064',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT07A -A','Chapel of rest','class','U064',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT07B -B','Crematorium','class','U064',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT07B','Dead bodies disposal places','class','U064',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT07A','Dead bodies storage places','class','U064',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT07A -B','Mortuary','class','U064',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08F','Direction finding places','class','U065',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08F -B','Direction finding transmitter','class','U065',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08F -A','Navigational light beacon','class','U065',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08A','Postal service places','class','U065',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08','Postal service, signalling and telecommunications places','class','U065',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08A -A','Postal sorting depot','class','U065',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08C-A','Radar beacon','class','U065',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08C','Radar places','class','U065',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08C-B','Radar station','class','U065',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08D-B','Radio and television mast','class','U065',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08D-A','Radio station','class','U065',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08E -A','Satellite communication station','class','U065',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08F -C','Signalling station','class','U065',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08B -A','Telephone cableway','class','U065',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08B -B','Telephone exchange','class','U065',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08B -C','Telephone kiosk','class','U065',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08D','Television and radio broadcasting places','class','U065',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('UT08D-C','Television station','class','U065',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS','Residences','class','#N/A',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS02A -A','Building converted to more than one dwelling','class','U071',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS02A -B','Bungalow','class','U071',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS02A -C','Detached house','class','U071',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS02A','Dwellings','class','U071',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS02A -D','Maisonette','class','U071',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS01C-A','Movable dwelling site','class','U071',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS02A -E','Non residential plus single dwelling','class','U071',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS02A -F','Purpose built block of flats','class','U071',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS01C-B','Residential caravan site','class','U071',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS02','Self contained residences','class','U071',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS02A -G','Semi detached house','class','U071',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS02A -H','Terraced house','class','U071',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS01A -A','Boarding house','class','U072',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS01','Group residences','class','U072',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS01A -B','Hotel','class','U072',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS01A -C','Residential club','class','U072',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS01A -D','Rooming house','class','U072',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS01B -A','Barracks','class','U073',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM04A -A','Children''s home','class','U073',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS01B','Communal homes','class','U073',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM04A -B','Handicapped and disabled people''s home','class','U073',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM04','Non medical care places','class','U073',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM04A','Non medical homes','class','U073',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM04A -C','Old people''s home','class','U073',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS01B -B','Residential retreat','class','U073',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS01B -C','School boarding house','class','U073',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RS01B -D','Staff hostel','class','U073',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM','Community and health services','class','#N/A',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01B -A','Ambulance station','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01A -A','Ante natal and post natal clinic','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01C-A','Artificial limb and appliance hospital','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01B','Auxiliary service centres medical','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01B -B','Blood transfusion centre','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01D-A','Convalescent home','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM04B -A','Counselling agency','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM04B','Counselling places','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01C-B','Dental hospital','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01A -B','Dentist''s surgery and consulting room','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01A -C','Dispensary','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01A -D','Doctor''s surgery and consulting room','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01C-C','Ear, nose and throat hospital','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01C-D','Eye hospital','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01A -E','Eye clinic and optician''s surgery and consulting room','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01B -C','Family planning clinic','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01A -F','Foot clinic and chiropodist''s surgery and consulting room','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01B -D','Forensic medicine centre','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01C-E','General hospital','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01C-F','Geriatric hospital','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01','Health care places','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01A -G','Health centre','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01A -H','Hearing aid centre','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01C','Hospitals','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01C-G','Isolation hospital','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01C-H','Maternity hospital','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01B','Medical auxiliary service centres','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01A','Medical diagnosis and treatment centres','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM02A','Medical research establishments','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM02A -A','Medical research laboratory','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01C-I','Mental hospital','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01A -I','Mental clinic','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01A -J','Nervous disorders clinic','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01A -K','Occupational therapy and physiotherapy clinic','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01C-J','Orthopaedic hosdpital','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01A -L','Orthopaedic and rheumatic clinic','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01B -E','Radiography centre','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM01A -M','Surgeon''s surgery and consulting room','class','U081',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM07A','Places of worship','class','U082',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01F -A','Adult education centre','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED02A -A','Archaeological site','class','U083',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01F -B','College of further education','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01F -C','College of technology','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01A -A','Day nursery school','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01','Education places','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01B -A','Infant school','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01B -B','Junior school','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01C-A','Middle school','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED02B -A','Nature reserve','class','U083',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED02B','Nature reserves and sanctuaries','class','U083',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01A -B','Nursery school','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED02A -B','Observatory','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01F -D','Polytechnic','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01A','Pre primary schools','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01B','Primary schools','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED02A','Research establishments','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED02','Research places','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01D-A','Secondary school','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01D','Secondary schools','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED02B -B','Site of special scientific interest','class','U083',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01D-B','Sixth form college','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01E -A','Special school','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01F','Specialised, higher and further education centres','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01F -E','Teacher training college','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01F -F','Technical college','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('ED01F -G','University teaching establishment','class','U083',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM06A -A','Advertising hoarding','class','U084',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM06A','Advertising places','class','U084',NULL,'F');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM05A -A','Approved school','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM08A -A','Arbitration court','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM05A -B','Borstal institution','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM06B -A','Church hall','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM05B -A','Civil Defence centre','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM06B -B','Club meeting place','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM05B -B','Coastguard station','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM06','Communication places','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM06B -C','Community centre','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM05','Community protection services','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM08A','Courts','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM05A','Detention places','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM05B -C','Fire station','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM08','Justice administration places','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM08A -B','Law court','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM05B -E','Life boat station','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM07A -A','Place of worship','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM05B -D','Police station','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM05A -C','Prison','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM05A -D','Prison rehabilitation centre','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM05B','Protection places','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM03A -A','Public bath','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM03A -B','Public convenience','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM05A -E','Remand centre','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM05A -F','Remand classifying centre','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM05A -G','Remand home','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM03','Sanitation places','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM03A','Sanitation places','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM06B','Social meeting places','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('CM08A -C','Tribunal place','class','U084',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT03','Catering service places','class','U093',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01','Retail distribution places','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT','Retail distribution and servicing places','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01A -A','Baker’s shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01B -A','Beauty salon','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT02B -A','Boot and shoe repair establishment','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01A -B','Butcher''s shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01D-A','Caravan sales place','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01F -A','Cash and carry store','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01A -C','Cats meat shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01B -C','Clothing and footwear shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01B -B','Confectionery, tobacco and newspaper shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01A -D','Dairy shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01F -B','Department store','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT02B -B','Dry cleaning and clothing repair establishment','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01B -D','Duplicating and copying centre','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01C-A','Electricity showroom','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01A -E','Fish shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01A','Food and drink shops','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01A -F','Fried fish shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01A -G','Frozen food shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01C-B','Gas showroom','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01B -E','General stores','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01A -H','Green grocer''s shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01A -I','Grocery and provision','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01B -F','Hairdresser''s shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01A -J','Hot food shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01C-C','Household goods shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01C','Household goods shops and showrooms','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01F','Hybrid shops and stores','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01F -C','Hypermarket','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT02B -C','Launderette','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT02B -D','Laundry (cleaning only)','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01B -G','Laundry, cleaning and repairing shop (receiving)','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT02','Maintenance and repair places','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01D-C','Motor vehicle dealer display area','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01D','Motor vehicle goods shops and filling stations','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT02A','Motor vehicle maintenance and repair places','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT02A -A','Motor vehicle repair garage','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01D-D','Motor vehicle sales','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01D-B','Motor vehicle spare parts and accessories','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT02A -B','Motor vehicle testing station','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01A -K','Off licence','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT02B','Personal and household goods repair and cleaning places','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01B -H','Pet animal and bird shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01D-E','Petrol and oil filling station','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01B -I','Photographic service shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01B -J','Post office','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01E -A','Retail market place','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01F -D','Supermarket','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01B -K','Ticket agency','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01B -L','Travel agency','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01A -L','Tripe shop','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01D-F','Tyre retailing and fitting place','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT01B -M','Undertaker','class','U091',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('OF02A -A','Bank','class','U092',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('LE01C-B','Betting office','class','U092',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('OF02A -B','Building society office','class','U092',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('OF02A','Financial service offices','class','U092',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('OF02A -C','Insurance office','class','U092',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT03B','Catering places','class','U093',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT03B -A','Restaurant','class','U093',NULL,'0');
INSERT INTO bulk_sources.buildings_landuse(landuse_id,description,level,parent_id,parent_name,is_used) VALUES ('RT03A -A','Public house','class','U094',NULL,'0');


--Then create table for the app
--update below with left self join to generate the gran parent fields
create table buildings_landuse as;
select
a.landuse_id primary key,
a.description,
a."level",
a.parent_id,
a.parent_name,
from bulk_sources.buildings_landuse a
where a.is_used = '0';

--this creates land use group with order as parentname
create view bulk_sources.nlud_classification_order_group as
select a.*
from bulk_sources.buildings_landuse a
where a.is_used is null
and a.parent_name is not null;

--this provides preant and  grand parent names to landuse classes
select
a.landuse_id,
a.description,
a."level",
a.parent_id,
b.description as parent_name,
b.parent_id as grand_parent_id,
b.parent_name as grand_parent_name
from bulk_sources.buildings_landuse a
join bulk_sources.nlud_classification_order_group b on a.parent_id = b.landuse_id
where a.is_used = '0';

--need to join these two views together to get the table for the app

--add comment to store query from which table is created

--add primary key
>>>>>>> 68a9fd1b80ddfe8a206ff1d946c7b94ae83d1264
