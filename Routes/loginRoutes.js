const express = require('express');
const loginRoutes= express.Router();
const {checkLoginData} = require('../controller/loginController')
const jwt=require('jsonwebtoken')

loginRoutes.post("/userlogin", checkLoginData);


module.exports= loginRoutes