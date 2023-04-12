const express = require('express');
const router= express.Router();
const {getalldataadmin, createsignupData,updateAdminData,deleteAdminData} = require('../controller/admincontroller.js')

router.get("/getalldataadmin", getalldataadmin);
router.post("/creates", createsignupData);
router.get("/updateAdminData", updateAdminData);
router.post("/deleteAdminData", deleteAdminData);


module.exports= router