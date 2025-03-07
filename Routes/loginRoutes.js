const express = require('express');
const loginRoutes= express.Router();
const {checkLoginData,UserDataChecks} = require('../controller/loginController')
const {CampaigndataSave, GetAllLinks,checkCamp,AdditionalUpdateData,MonthlyReport, GetAllLinksAdmin, GetAllCountDataAdmin} = require('../controller/Campaign-Form')
const {GetCampData} = require('../controller/Campaign-Form')
const {GetAllCountData,Filterdata,SearchByData,SearchByChart,AllUserList    } = require('../controller/Campaign-Form')
const {GetNotes,createNote,updateNote,deleteNote,GetSingleNote} = require('../controller/notescontroller')

const jwt=require('jsonwebtoken')
const {authenticateToken}=require('../Middleware/middleware')


loginRoutes.post("/userlogin", checkLoginData);
loginRoutes.get("/userDataCheck",UserDataChecks);
loginRoutes.post("/form-data",CampaigndataSave );
loginRoutes.get("/camp-data", authenticateToken,GetCampData);



// All Gettting Data 
loginRoutes.post("/specific-data", GetAllCountData);
loginRoutes.post("/filter-data", Filterdata);
loginRoutes.post("/searchbydata", SearchByData);
loginRoutes.post("/searchbychart", SearchByChart);
loginRoutes.post("/get-link", GetAllLinks);
loginRoutes.post("/check-camp", checkCamp);
loginRoutes.post("/update-data", AdditionalUpdateData);
loginRoutes.post("/data",MonthlyReport );
loginRoutes.get("/data",AllUserList );

loginRoutes.get("/get-link-admin", GetAllLinksAdmin);
loginRoutes.get("/specific-data-admin", GetAllCountDataAdmin);


// ************************ for Notes*************************
loginRoutes.post("/create-note",createNote );
loginRoutes.get("/get-notes",GetNotes );
loginRoutes.post("/update-note",updateNote );
loginRoutes.post("/delete-note",deleteNote );
loginRoutes.post("/get-single-note",GetSingleNote );


module.exports= loginRoutes