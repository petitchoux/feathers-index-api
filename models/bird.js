'use strict';
const { Model } = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Bird extends Model {}

  Bird.init({
    speciesName: {
      type: DataTypes.STRING,
      unique: true,
      allowNull: false
    },
    name: {
      type: DataTypes.STRING,
      unique: true,
      allowNull: false
    },
    sageid: {
      type: DataTypes.INTEGER,
      unique: true
    },
    habitat: {
      type: DataTypes.TEXT
    },
    plumage: {
      type: DataTypes.TEXT
    },
    nest: {
      type: DataTypes.TEXT
    },
    diet: {
      type: DataTypes.TEXT
    },
    lifespan: {
      type: DataTypes.STRING
    },
    conservationStatus: {
      type: DataTypes.STRING
    },
    funFacts: {
      type: DataTypes.ARRAY(DataTypes.TEXT)
    }
  }, {
    sequelize,
    modelName: 'bird'
  });

  return Bird;
};