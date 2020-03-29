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
router.get('/:id', async (req, res) => {
  let tipName = req.params.id;
  let reqTip = await TipModel.findOne({
    where: {
      id: tipName
    }
  });
  res.json(
    reqTip.dataValues
  );
});

router.post('/', async (req, res) => {
  const {id, name, description} = req.body;
  const newTip = await TipModel.create({ id, name, description });
  res.json(
    newTip
  );
});

module.exports = router;