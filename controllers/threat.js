const express = require('express');
const models = require('../models');
const ThreatModel = models.Threat;

const router = express.Router();

// Return all data in Threat DB
router.get('/', async (req, res) => {
    const threats = await ThreatModel.findAll();
    res.json(threats)
});

// Return data for particular threat
router.get('/:name', async (req, res) => {
  let threatName = req.params.name;
  let reqThreat = await ThreatModel.findOne({
    where: {
      name: threatName
    }
  });
  res.json(
    reqThreat.dataValues
  );
});

router.post('/', async (req, res) => {
  const {name, description} = req.body;
  const newThreat = await ThreatModel.create({ name, description });
  res.json(
    newThreat
  );
});

module.exports = router;