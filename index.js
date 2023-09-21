const express = require('express')
const cors = require('cors')
const mysql = require('mysql')
const axios = require('axios')
const app = express()
app.use(cors())
var con = mysql.createConnection({
    host:'localhost',
    user:"root",
    password:"",
    database:"swiat"
})
con.connect((err)=>{
    if(err) console.log(err)
    else{console.log('Połonczono')}
})
//app.get('/', (req, res) => {
axios.get('https://restcountries.com/v3.1/all').then((response)=>{
    const resp = response.data
    for(var i=0;i<=resp.length-1;i++){
    const sql = `INSERT INTO kraje(name, population, capital, area) VALUES ("${resp[i].name.common}", "${resp[i].population}", "${resp[i].capital}","${resp[i].area}")`
    
    con.query(sql,(err,result,fields)=>{
        if(err)console.log(err) 
        else{console.log("Dodano pomyślnie kraj")}
    })
}for(var i=0;i<=resp.length-1;i++){
    const sql =` UPDATE kraje SET name="${resp[i].name.common}",population="${resp[i].population}",capital="${resp[i].capital}",area="${resp[i].area}"` 
    con.query(sql,(err,result,fields)=>{
        if(err)console.log(err)
        else{console.log("Pomyślnie zaktualizowano")}
    })
}
    
})

//res.json(responseData);
//})


app.listen(3000)