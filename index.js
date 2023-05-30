const express = require('express');
const db = require('./config/db'); 
const getalldataadmin = require('./Routes/adminRoute')
const adddataadmin = require('./Routes/adminRoute')
const loginRoutes = require('./Routes/loginRoutes')
const userDataCheck = require('./Routes/loginRoutes')

const CampaigndataSave = require('./Routes/loginRoutes')
const GetCampData = require('./Routes/loginRoutes')
const GetAllCountData = require('./Routes/loginRoutes')

const Filterdata = require('./Routes/loginRoutes')
const searchbydata = require('./Routes/loginRoutes')
const searchbychart = require('./Routes/loginRoutes')
const GetAllLinks = require('./Routes/loginRoutes')
const checkCamp = require('./Routes/loginRoutes')
const AdditionalUpdateData = require('./Routes/loginRoutes')
const MonthlyReport = require('./Routes/loginRoutes')
const AllUserList = require('./Routes/loginRoutes')


const notes = require('./Routes/loginRoutes')

const cors = require('cors')
const app=express();
const bodyParser = require('body-parser')
const cookieParser = require('cookie-parser');
const { GetAllLinksAdmin, GetAllCountDataAdmin } = require('./controller/Campaign-Form');




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



//Searhing Data

app.use('/camp-id',GetAllCountData);

app.use('/filter-data',Filterdata);
app.use('/search-data',searchbydata);
app.use('/search-chart',searchbychart);
app.use('/Get-All-Links',GetAllLinks);

app.use('/check',checkCamp);
app.use('/update',AdditionalUpdateData);

app.use('/monthly',MonthlyReport);

app.use('/users',AllUserList);


app.use('/Get-All-Links-admin',GetAllLinksAdmin);
app.use('/camp-id-admin',GetAllCountDataAdmin);

// ********************** for Notes **************************
app.use('/notes',notes)

app.listen(1010, function () {
    console.log('Node app is running on port 1010');
});


