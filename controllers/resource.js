const express = require('express');
const models = require('../models');
const ResourceModel = models.Resource;

const router = express.Router();

// Return all data in Resource DB
router.get('/', async (req, res) => {
    const resources = await ResourceModel.findAll();
    res.json(resources)
});

// Return data for particular resource
router.get('/:id', async (req, res) => {
  let resourceName = req.params.id;
  let reqResource = await ResourceModel.findOne({
    where: {
      id: resourceName
    }
  });
  res.json(
    reqResource.dataValues
  );
});

router.post('/', async (req, res) => {
  const {id, name, url} = req.body;
  const newResource = await ResourceModel.create({ id, name, url });
  res.json(
    newResource
  );
});

module.exports = router;