const express = require('express');
const loginRoutes= express.Router();
const {checkLoginData,UserDataChecks} = require('../controller/loginController')
const {CampaigndataSave} = require('../controller/Campaign-Form')
const {GetCampData} = require('../controller/Campaign-Form')
const {GetAllCountData,Filterdata,SearchByData,SearchByChart} = require('../controller/Campaign-Form')

const jwt=require('jsonwebtoken')
const {authenticateToken}=require('../Middleware/middleware')


loginRoutes.post("/userlogin", checkLoginData);
loginRoutes.get("/userDataCheck",UserDataChecks);
loginRoutes.post("/form-data",CampaigndataSave );
loginRoutes.get("/camp-data", authenticateToken,GetCampData);

// All Gettting Data 
loginRoutes.get("/specific-data", GetAllCountData);
loginRoutes.get("/filter-data", Filterdata);
loginRoutes.get("/searchbydata", SearchByData);
loginRoutes.get("/searchbychart", SearchByChart);






module.exports= loginRoutes