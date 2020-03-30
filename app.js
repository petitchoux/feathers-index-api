const bodyParser = require('body-parser');
const express = require('express');
const models = require('./models');
const aws = require('aws-sdk');
const Sequelize = require('sequelize');
const http = require('http');
let sequelize;

// checks if env is Heroku, if so, sets sequelize to utilize the database hosted on heroku
if (process.env.DATABASE_URL) {
  // the application is executed on Heroku ... use the postgres database
  sequelize = new Sequelize(process.env.DATABASE_URL, {
    dialect:  'postgres',
    protocol: 'postgres'
  })
};

const port = process.env.PORT || 8000;

const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Load up all of the controllers
const controllers = require('./controllers');
app.use(controllers);

app.get('/', (req, res) => res.send('Hello World!'));

models.sequelize.sync().then(function() {
  http.createServer(app).listen(port, function(){
    console.log('Express server listening on port ' + port);
  });
});

const S3_BUCKET = process.env.S3_BUCKET;