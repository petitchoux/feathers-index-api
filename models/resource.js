'use strict';
const { Model } = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Resource extends Model {}

  Resource.init({
    name: {
      type: DataTypes.STRING,
      unique: true,
      allowNull: false
    },
    url: {
      type: DataTypes.TEXT
    }
  }, {
    sequelize,
    modelName: 'resource'
  });

  return Resource;
};