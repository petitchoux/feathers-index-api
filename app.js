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

// app.listen(port, () => console.log(`Example app listening on port ${port}!`))

// First, make sure the Database tables and models are in sync
// then, start up the server and start listening.
// Force should be false for security pursposes.
// Change Force to true only when editing db
// models.sequelize.sync({force: false})
//   .then(() => {
//     app.listen(port, () => {
//       console.log(`Server is up and running on port: ${port}`)
//     });
//   });

models.sequelize.sync().then(function() {
  http.createServer(app).listen(port, function(){
    console.log('Express server listening on port ' + port);
  });
});

const S3_BUCKET = process.env.S3_BUCKET;