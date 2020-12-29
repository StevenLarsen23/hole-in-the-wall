require('dotenv').config();

const express = require('express');
const massive = require('massive');

const ctrl = require('./controller');

const { CONNECTION_STRING, SESSION_SECRET, SERVER_PORT } = process.env;

const app = express();



massive({
    connectionString: CONNECTION_STRING,
    ssl: { rejectUnauthorized: false }
})
.then((db) => {
    app.set('db', db)
    console.log('Database is online')
})
.catch(err => console.log(err))


// Endpoints 
app.get('/api/allStates', ctrl.getAllStates)
app.get('/api/oneState/:id', ctrl.getOneState)
app.get('/api/statePosts/:id', ctrl.getStatePosts)
app.post('/api/create', ctrl.createPost)
app.put('/api/edit/:id', ctrl.editPost)
app.delete('/api/delete/:id', ctrl.deletePost)


app.listen(SERVER_PORT, () => console.log(`Server is running on port: ${SERVER_PORT}`))