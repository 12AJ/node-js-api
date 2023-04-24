const express = require('express');
const db = require('./config/db'); 
const getalldataadmin = require('./Routes/adminRoute')
const adddataadmin = require('./Routes/adminRoute')
const loginRoutes = require('./Routes/loginRoutes')
const userDataCheck = require('./Routes/loginRoutes')
const CampaigndataSave = require('./Routes/loginRoutes')
const GetCampData = require('./Routes/loginRoutes')
const GetSpecificData = require('./Routes/loginRoutes')
const cors = require('cors')
const app=express();
const bodyParser = require('body-parser')
const cookieParser = require('cookie-parser')




app.use(cors( {
    origin: 'http://localhost',
    allowedHeaders: ['Content-Type', 'Authorization'],
    credentials: true
    
  } ));
  

//app.use(cors ());
  
app.use(express.json());


app.use(bodyParser.json())


app.use(cookieParser())


app.use('/data', getalldataadmin);
app.use('/data',adddataadmin );





app.use('/login',loginRoutes);

app.use('/user',userDataCheck);

app.use('/app/v1',CampaigndataSave);


///get Links Camp Data

app.use('/camp-list',GetCampData);

app.use('/camp-id',GetSpecificData);






app.listen(1010, function () {
    console.log('Node app is running on port 1010');
});


