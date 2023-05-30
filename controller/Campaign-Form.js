//Create All Data
const con = require('../config/db'); 
let temp;
const  CampaigndataSave= (req, res) => {
    const data = req.body



    
    let assetString='';
    let assetLink='';
    data.asset_link_data.forEach( (element,i) => {

            
           if(i==data.asset_link_data.length-1){
            
            assetString+=`${element.title}`.replaceAll('"', '');
            
            assetLink+=`${element.link}` ;
            
           }else{
            
            assetString+=`${element.title}#$#@`.replaceAll('"', '')
            
            assetLink+=`${element.link}#$#@`
            
           }
            
            
            
});
console.log(assetString)
console.log(assetLink)

    
    temp ={
            cid: data.cid,
            Campaign_Name:data.cname,
            Category:data.category,
            Client_Code:data.client_code,
            Country:data.country,
            EDM_Completed_By:data.username,
            userid:data.userid,
            Asset_Name:assetString.replaceAll('"',''),
            edm_link:assetLink.replaceAll('"',''),
        
        }
      console.log(temp)
     
         con.query("INSERT INTO links SET ?", temp, (error, result) => {

          
        if (error) error;
        res.send({send:"ok"});
        })
}

const GetCampData = (req, resp) => {
    con.query("select * from links", (err, result) => {
        if (err) {
            resp.send("This is Error ");
        } else {
            resp.send(result);
        }
    });
}
const GetAllCountData = (req,resp) => {
    con.query(`SELECT count(*) FROM links WHERE userid =${req.body.userid}  GROUP BY ID`, (err, result) => {
        if (err) {
            resp.send("This is Error");
        } else {
            resp.send(result);
        }
    });
}
const GetAllLinks = (req,resp) => {
    con.query(`select EDM_link, (length(EDM_link) - length(replace(EDM_link, '$', ''))+ 1 ) AS totalLinks from links WHERE  userid = '${req.body.userid}'`, (err, result) => {
        if (err) {
            resp.send("This is Error");
        } else {
            let tmp=0;
            result.forEach((element)=>{
              // console.log(element.totalLinks); 
               tmp+=element.totalLinks;
            })
            resp.json({totalLinks:tmp});
        }
    });
}

const Filterdata = (req,resp) => {
    console.log(req.body)
    con.query(`select EDM_link, (length(EDM_link) - length(replace(EDM_link, '$', ''))+ 1 ) AS total from links WHERE Client_Code = '${req.body.client_code}' AND Country = '${req.body.country}' AND Category = '${req.body.category}' AND userid = '${req.body.userid}'`, (err, result) => {
        if (err) {
            resp.send("This is Error");
        } else {
            let tmp=0;
            result.forEach((element)=>{
              // console.log(element.total); 
               tmp+=element.total;
            })
            resp.json({total:tmp});
        }
    });

}
const SearchByData = (req,resp) => {
    console.log(req.body.userData)
    con.query(`SELECT * FROM links WHERE Cid LIKE '%${req.body.userData}%' OR Campaign_Name LIKE '%${req.body.userData}%'  OR EDM_link LIKE '%${req.body.userData}%'`, (err, result) => {
       console.log(result)
        if (err) {

            resp.send("This is Error");
        } else {

            resp.send(result)
        }
    });
}

const SearchByChart = (req,resp) => {
    con.query(`SELECT * FROM links WHERE  userid =${req.body.userid}  GROUP BY ID`, (err, result) => {
        if (err) {
            resp.send("This is Error");
        } else {
            resp.send(result);
        }
    });
}


const checkCamp = (req,resp) => {
    con.query(`SELECT * FROM links WHERE  Campaign_Name ='${req.body.Campaign_Name}'`, (err, result) => {
        if (err) {
            resp.send("This is Error");
        } else {
            resp.send(result);
        }
    });
}
const AdditionalUpdateData = (req,resp) => {
    console.log(req.body);
    con.query(`UPDATE links SET Asset_Name = "${req.body.asset_data}",EDM_link= "${req.body.link_data}",Links_Updated_by= "${req.body.updatedby}",Comments= "${req.body.comment}" WHERE Campaign_Name = "${req.body.cname}"`, (error, result) => {
            
        if (error) error;
        resp.send({send:"ok"});
        })
}

const MonthlyReport = (req,resp) => {
    con.query(`SELECT * FROM links WHERE 	date(Date)  BETWEEN  '${req.body.formdate}' AND '${req.body.todate}'`,  (error, result) => {
        if (error) error;
        resp.send(result);
        
        })
}
const AllUserList = (req,resp) => {
    con.query(`SELECT firstname FROM signup `, (error, result) => {
        if (error) error;
        resp.send(result);
        
        })
}

const GetAllCountDataAdmin = (req,resp) => {
    con.query(`SELECT count(*) FROM links `, (err, result) => {
        if (err) {
            resp.send("This is Error");
        } else {
            resp.send(result);
        }
    });
}
const GetAllLinksAdmin= (req,resp) => {
    con.query(`select EDM_link, (length(EDM_link) - length(replace(EDM_link, '$', ''))+ 1 ) AS totalLinks from links `, (err, result) => {
        if (err) {
            resp.send("This is Error");
        } else {
            let tmp=0;
            result.forEach((element)=>{
              // console.log(element.totalLinks); 
               tmp+=element.totalLinks;
            })
            resp.json({totalLinks:tmp});
        }
    });
}
module.exports={
    CampaigndataSave,
    GetCampData,
    GetAllCountData,
    Filterdata,
    SearchByData,
    SearchByChart,
    GetAllLinks,
    checkCamp,
    AdditionalUpdateData,
    MonthlyReport,
    AllUserList,
    GetAllCountDataAdmin,
    GetAllLinksAdmin
}