const bodyParser = require('body-parser');
const express = require('express');
const models = require('./models');

const port = process.env.PORT || 8000;

const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Load up all of the controllers
const controllers = require('./controllers');
app.use(controllers)

app.get('/', (req, res) => res.send('Hello World!'));

// app.listen(port, () => console.log(`Example app listening on port ${port}!`))

// First, make sure the Database tables and models are in sync
// then, start up the server and start listening.
// Force should be false for security pursposes.
// Change Force to true only when editing db
models.sequelize.sync({force: false})
  .then(() => {
    app.listen(port, () => {
      console.log(`Server is up and running on port: ${port}`)
    });
  });