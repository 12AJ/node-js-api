const express = require('express');
const db = require('./config/db'); 
const getalldataadmin = require('./Routes/adminRoute')
const adddataadmin = require('./Routes/adminRoute')
const loginRoutes = require('./Routes/loginRoutes')
const userDataCheck = require('./Routes/loginRoutes')
const cors = require('cors')
const app=express();
const bodyParser = require('body-parser')
const cookieParser = require('cookie-parser')

app.use(cors( {
    origin: 'http://127.0.0.1:5500',
   allowedHeaders: ['Content-Type', 'Authorization'],
   credentials: true
  } ));

app.use(express.json());


app.use(bodyParser.json())


app.use(cookieParser())


app.use('/data', getalldataadmin);
app.use('/data',adddataadmin );





app.use('/login',loginRoutes);

app.use('/user',userDataCheck);





app.listen(1010, function () {
    console.log('Node app is running on port 1010');
});


