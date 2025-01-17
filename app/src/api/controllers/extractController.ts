import express from 'express';
import * as dataExtractService from '../services/dataExtract';
import asyncController from '../routes/asyncController';


const getAllDataExtracts = asyncController(async function(req: express.Request, res: express.Response) {
    try {
        const dataExtracts = await dataExtractService.listDataExtracts();
        res.send({ extracts: dataExtracts });
    } catch (err) {
        res.send({ error: 'Database error' });
    }
});

const getDataExtract = asyncController(async function(req: express.Request, res: express.Response) {
    try {
        const extractId = req.params.extract_id;
        const extract = await dataExtractService.getDataExtractById(extractId);
        res.send({ extract: extract });
    } catch (err) {
        res.send({ error: 'Database error' });
    }
});

export default {
    getAllDataExtracts,
    getDataExtract
};
