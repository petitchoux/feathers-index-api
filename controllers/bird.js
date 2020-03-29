const express = require('express');
const models = require('../models');
const BirdModel = models.Bird;

const router = express.Router();

// Return all data in Bird DB
router.get('/', async (req, res) => {
  const birds = await BirdModel.findAll();
  res.json(birds)
});

router.get('/:id', async (req, res) => {
  let birdName = req.params.id;
  let reqBird = await BirdModel.findOne({
    where: {
      id: birdName
    }
  });
  res.json(
    reqBird.dataValues
  );
});

router.post('/', async (req, res) => {
  const {id, name, sageid, habitat, plumage, nest, diet, lifespan, conservationStatus, funFacts} = req.body;
  // console.log(name, habitat, diet, plumage);
  const newBird = await BirdModel.create({ id, name, sageid, habitat, plumage, nest, diet, lifespan, conservationStatus, funFacts });
  res.json(
    newBird
  );
});

module.exports = router;
