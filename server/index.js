const myEnv = require('dotenv').config();
const express = require("express");
const massive = require("massive");
const ctrl = require("./controller");
const path = require('path')

const { CONNECTION_STRING, SERVER_PORT } = process.env;

const app = express();

app.use(express.json());


massive({
  connectionString: CONNECTION_STRING,
  ssl: { rejectUnauthorized: false },
})
  .then((db) => {
    app.set("db", db);
    console.log("Database is online");
  })
  .catch((err) => console.log(err));

// Endpoints
app.get("/api/allStates", ctrl.getAllStates);
app.get("/api/oneState/:id", ctrl.getOneState);
app.get("/api/allPosts", ctrl.getAllPosts);
app.get("/api/onePost/:id", ctrl.getPost);
app.get('/api/statePost/:id', ctrl.statePost)
app.post("/api/create", ctrl.createPost);
app.put("/api/edit/:id", ctrl.editPost);
app.delete("/api/delete/:id", ctrl.deletePost);

app.use(express.static(__dirname + '/../build'))

app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, '../build/index.html'))
})

app.listen(SERVER_PORT, () =>
  console.log(`Server is running on port: ${SERVER_PORT}`)
);
