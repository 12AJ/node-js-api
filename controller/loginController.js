//check Login data 

const con = require('../config/db'); 
const jwt=require('jsonwebtoken')

const checkLoginData = (request, response) => {
    var username = request.body.username;
    var password = request.body.password;
    if(username && password)
    {
        query = `
        SELECT * FROM  signup
 
        WHERE username = "${username}"
        `;

        con.query(query, function(error, data){

            if(data.length > 0)
            {
                for(var count = 0; count < data.length; count++)
                {
                    if(data[count].password == password ) 
                    {
                        secretkey="ketan_d"
                        const token = jwt.sign({username:username},secretkey,{expiresIn:"1800s"})
                        console.log(token)

                       // response.setHeader("Access-Control-Allow-Headers", "X-Requested-With, content-type");
                        
                        response.cookie('token', token , { maxAge:900000,  httpOnly:true})
                        if (error) error; 
                        response.json({status:'ok', data:token})
                        return;

                   
                    }
                    else
                    {
                        
                        response.send('Incorrect Password');
                    }
                }
            }
            else
            {
                response.send('Incorrect Email Address');
            }
            response.end();
        });
    }
    else
    {
        response.send('Please Enter Email Address and Password Details');
        response.end();
    }

}
module.exports = {
    checkLoginData

}