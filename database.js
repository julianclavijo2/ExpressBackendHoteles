const mysql = require('mysql');


const mysqlConnection = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"Turismo",

})

mysqlConnection.connect( function(err){
    if (err) {
        console.log(err);
        return
    }else{
        console.log('la base de datos esta conectada');
    }
});

module.exports = mysqlConnection;