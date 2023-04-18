const express = require('express');
const loginRoutes= express.Router();
const {checkLoginData,UserDataChecks} = require('../controller/loginController')
const {CampaigndataSave} = require('../controller/Campaign-Form')
const jwt=require('jsonwebtoken')


loginRoutes.post("/userlogin", checkLoginData);
loginRoutes.get("/userDataCheck", UserDataChecks);
loginRoutes.post("/form-data",CampaigndataSave );



module.exports= loginRoutes