const express = require('express');
const loginRoutes= express.Router();
const {checkLoginData,UserDataChecks} = require('../controller/loginController')
const jwt=require('jsonwebtoken')


loginRoutes.post("/userlogin", checkLoginData);
loginRoutes.get("/userDataCheck", UserDataChecks);


module.exports= loginRoutes