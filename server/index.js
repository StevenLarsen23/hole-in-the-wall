require('dotenv').config();

const express = require('express');
const massive = require('massive');

// const ctrl = require('./controller');  uncomment this after controller is made

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
app.get('/api/allStates')
app.get('/api/oneState')
app.put('/api/edit/:id')
app.post('/api/create')
app.delete('/api/delete/:id')


app.listen(SERVER_PORT, () => console.log(`Server is running on port: ${SERVER_PORT}`))