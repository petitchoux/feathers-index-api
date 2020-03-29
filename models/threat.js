'use strict';
const { Model } = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Threat extends Model {}

  Threat.init({
    name: {
      type: DataTypes.STRING,
      unique: true,
      allowNull: false
    },
    description: {
      type: DataTypes.TEXT
    }
  }, {
    sequelize,
    modelName: 'threat'
  });

  return Threat;
};