const express = require('express');
const models = require('../models');
const TipModel = models.Tip;

const router = express.Router();

// Return all data in Tip DB
router.get('/', async (req, res) => {
    const tips = await TipModel.findAll();
    res.json(tips)
});

// Return data for particular tip
router.get('/:name', async (req, res) => {
  let tipName = req.params.name;
  let reqTip = await TipModel.findOne({
    where: {
      name: tipName
    }
  });
  res.json(
    reqTip.dataValues
  );
});

router.post('/', async (req, res) => {
  const {name, description} = req.body;
  const newTip = await TipModel.create({ name, description });
  res.json(
    newTip
  );
});

module.exports = router;