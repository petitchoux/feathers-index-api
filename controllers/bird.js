const express = require('express');
const models = require('../models');
const BirdModel = models.Bird;

const router = express.Router();

// Return all data in Bird DB
router.get('/', async (req, res) => {
  const birds = await BirdModel.findAll();
  res.json(birds)
});

router.get('/:name', async (req, res) => {
  let birdName = req.params.name;
  let reqBird = await BirdModel.findOne({
    where: {
      speciesName: birdName
    }
  });
  res.json(
    reqBird.dataValues
  );
});

router.post('/', async (req, res) => {
  const {speciesName, name, sageid, habitat, plumage, nest, diet, lifespan, conservationStatus, funFacts} = req.body;
  // console.log(name, habitat, diet, plumage);
  const newBird = await BirdModel.create({ speciesName, name, sageid, habitat, plumage, nest, diet, lifespan, conservationStatus, funFacts });
  res.json(
    newBird
  );
});

module.exports = router;
