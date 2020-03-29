'use strict';
const { Model } = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Threat extends Model {}

  Threat.init({
    id: {
      type: DataTypes.STRING,
      primaryKey: true,
      unique: true,
      allowNull: false
    },
    name: {
      type: DataTypes.STRING,
      unique: true,
      allowNull: false
    },
    description: {
      type: DataTypes.TEXT,
      allowNull: false
    }
  }, {
    sequelize,
    modelName: 'threat'
  });

  return Threat;
};