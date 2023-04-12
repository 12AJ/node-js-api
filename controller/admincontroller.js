
//const adminModel = require('../model/adminModel');

const con = require('../config/db'); 

const getalldataadmin = (req, resp) => {
    con.query("select * from users", (err, result) => {
        if (err) {
            resp.send("This is Error");
        } else {
            resp.send(result);
        }
    });
}
//Create All Data
const createsignupData = (req, res) => {
    const data = req.body
    con.query("INSERT INTO signup SET ?", data, (error, result) => {
        if (error) error;
        res.send({send:"ok"});
    })
}

//Update Admin Data
const updateAdminData = (req, res) => {
    app.put("/:id", (req, resp) => {
        const data = [req.body.name, req.body.password, req.body.user_type, req.params.id]
        con.query("UPDATE users SET name=?,password= ?,user_type=? where id=?", data, (err, result, field) => {
            if (err) throw err;
            resp.send(result)
        })
    });
}

//Delete Admin Data
const deleteAdminData = (req, res) => {
    app.put("/:id", (req, resp) => {
        const data = [req.body.name, req.body.password, req.body.user_type, req.params.id]
        con.query("UPDATE users SET name=?,password= ?,user_type=? where id=?", data, (err, result, field) => {
            if (err) throw err;
            resp.send(result)
        })
    });
}




module.exports = {
    getalldataadmin,
    createsignupData,
    updateAdminData,
    deleteAdminData
}
