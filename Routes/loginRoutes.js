const express = require('express');
const loginRoutes= express.Router();
const {checkLoginData,UserDataChecks} = require('../controller/loginController')
const {CampaigndataSave} = require('../controller/Campaign-Form')
const {GetCampData} = require('../controller/Campaign-Form')
const jwt=require('jsonwebtoken')
const {authenticateToken}=require('../middleware/middleware.js')


loginRoutes.post("/userlogin", checkLoginData);
loginRoutes.get("/userDataCheck",UserDataChecks);
loginRoutes.post("/form-data",CampaigndataSave );
loginRoutes.get("/camp-data", GetCampData);



module.exports= loginRoutes