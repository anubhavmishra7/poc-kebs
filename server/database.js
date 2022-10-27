const mysql=require('mysql')

const util = require("util");

var pool=mysql.createPool({

    host:'localhost',
    user:'root',
    password:'12345678',
    port:'3306',
    database:'kaar'

})

pool.getConnection((err,connection)=>{

     if (connection) {

    connection.release();

  }})

module.exports.pool = util.promisify(pool.query).bind(pool);