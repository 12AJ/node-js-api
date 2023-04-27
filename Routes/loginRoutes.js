const express = require('express');
const loginRoutes= express.Router();
const {checkLoginData,UserDataChecks} = require('../controller/loginController')
const {CampaigndataSave} = require('../controller/Campaign-Form')
const {GetCampData} = require('../controller/Campaign-Form')
const {GetSpecificData} = require('../controller/Campaign-Form')

const jwt=require('jsonwebtoken')
const {authenticateToken}=require('../Middleware/middleware')


loginRoutes.post("/userlogin", checkLoginData);
loginRoutes.get("/userDataCheck",UserDataChecks);
loginRoutes.post("/form-data",CampaigndataSave );
loginRoutes.get("/camp-data", authenticateToken,GetCampData);
loginRoutes.get("/specific-data", GetSpecificData);




module.exports= loginRoutes