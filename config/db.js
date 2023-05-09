const mysql=require('mysql');
const con=mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"collated_report_test",
    timezone:'Z'
});

con.connect((err)=>{
  if(err){
    console.log("This is error");
  }else{
    console.log("connected");
  }
});
module.exports=con;