const express = require('express');
const db = require('./config/db'); 
const getalldataadmin = require('./Routes/adminRoute')
const adddataadmin = require('./Routes/adminRoute')
const cors = require('cors')
const app=express();

app.use(cors())
app.use(express.json());

app.use('/data', getalldataadmin);
app.use('/data',adddataadmin );



app.listen(1010, function () {
    console.log('Node app is running on port 1010');
});


