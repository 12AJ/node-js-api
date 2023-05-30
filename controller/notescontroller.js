const con = require('../config/db'); 

// ***********************to get all notes************************************


const GetNotes = (req, resp) => {
    con.query("select * from notes", (err, result) => {
        if (err) {
            resp.send("This is Error ");
        } else {
            resp.send(result);
        }
    });
}

// ***********************to get single note data************************************


const GetSingleNote = (req, resp) => {
    con.query(`SELECT * from notes WHERE id=${req.body.noteId}`, (err, result) => {
        if (err) {
            resp.send("This is Error ");
        } else {
            resp.send(result);
        }
    });
}


// ***********************to create note************************************
const createNote = (req, resp) => {

    const data = req.body;


  let  temp ={
        title:data.noteTitle,
        abstract:data.noteAbstract,
        madeby:data.noteCreator,
        color:data.color,
    }
 
     con.query("INSERT INTO notes SET ?", temp, (error, result) => {

      
    if (error) error;
    resp.send({send:"ok"});
    })
}


// ***********************to Update note************************************
const updateNote = (req, resp) => {


    con.query(`UPDATE notes SET title = "${req.body.noteTitle}",abstract= "${req.body.noteAbstract}" WHERE id = "${req.body.noteId}"`, (error, result) => {
      
    if (error) error;
    resp.send({send:"ok"});
    })
}

// ***********************to Delete note************************************
const deleteNote = (req, resp) => {
  
    con.query(`DELETE FROM notes WHERE id = ${req.body.noteId}`, (error, result) => {
      
    if (error) error;
    resp.send({send:"ok"});
    })
}

module.exports={
    GetNotes,
    createNote,
    updateNote,
    deleteNote,
    GetSingleNote
}