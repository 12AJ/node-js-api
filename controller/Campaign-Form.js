//Create All Data
const con = require('../config/db'); 
let temp;
const  CampaigndataSave= (req, res) => {
    const data = req.body
    let assetString='';
    let assetLink='';
    data.asset_link_data.forEach( (element,i) => {
    //  temp ={
    //     cid: data.cid,
    //     Campaign_Name:data.cname,
    //     Category:data.category,
    //     Client_Code:data.client_code,
    //     Country:data.country,
    //     Asset_Name:element.title,
    //     edm_link:element.link
    // }
    // console.log(temp)
    // con.query("INSERT INTO links SET ?", temp, (error, result) => {
    //     if (error) error;
    //     res.send({send:"ok"});
        // })
        console.log(i)
if(i==data.asset_link_data.length-1){
    assetString+=`${element.title}`
    assetLink+=`${element.link}` 
}else{
    assetString+=`${element.title}#$#@`
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
            Asset_Name:assetString,
            edm_link:assetLink
        }
         con.query("INSERT INTO links SET ?", temp, (error, result) => {
        if (error) error;
        res.send({send:"ok"});
        })
}

const GetCampData = (req, resp) => {
    con.query("select * from links", (err, result) => {
        if (err) {
            resp.send("This is Error");
        } else {
            resp.send(result);
        }
    });
}



const GetSpecificData = (req,resp) => {
    con.query("select * From EDM_link", (err, result) => {
        if (err) {
            resp.send("This is Error");
        } else {
            resp.send(result);
        }
    });
}

module.exports={
    CampaigndataSave,
    GetCampData,
    GetSpecificData
}