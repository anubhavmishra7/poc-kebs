const { query } = require('express');
const express= require('express')
const mysql= require('mysql');
const { restart } = require('nodemon');
const app=express();
const bodyParser = require("body-parser");
app.use(bodyParser.urlencoded({ extended: false }))
const port=3001;
const pool=require('./database').pool;
var cors = require('cors')

app.use(cors())

// const connection = mysql.createConnection
// ({
//     host:'localhost',
//     user:'root',
//     password:'12345678',
//     port:'3306',
//     database:'kaar'
// });

// connection.connect((err)=>{
//     if(err){
//     console.log(err)
//     }
//     console.log("DB Connected")
//     });

    //this takes the post body
    app.use(express.json({extended: false}));

    // app.get('/', (req, res) => {
    //     res.send('Heksdnc!')
    //   })
    // app.post("/",(req,res)=>{
    //     connection.query("select * from training where user_name =? ? and user_pass =?",(err) )
    // })  
    app.post('/signup',async (req,res) =>{
      const email=req.body.email;
      const password=req.body.password;
      //const{email,password} = req.body;
        //check db for email if email is already taken
       console.log(email);
       console.log(password);
      
      //res.send("Signup api route");
      //var userId = 'some user provided value';
      var query    = 'SELECT * FROM m_user_table WHERE email=? and password=?'   ;
      

      let result= await pool(query,[email,password])

// let results =connection.format(sql,[email,password]);
     if(result && result.length>0)
     {
      res.send({result:result,authentication:true});  
     }
     else{
      
      res.send({result:"error",authentication:false})
     }
     
    //  res.json({token:"123456789"});
    });
    
      app.listen(port, () => {
        //console.log('https://10.0.2.2:3001')
        console.log(`Our app listening at http://localhost:${port}`)
      })
//module.exports=connection;