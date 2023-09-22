const express= require('express')
const cors = require('cors')
const axios = require('axios')
const app = express()
const mysql = require('mysql')
var con = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:"",
    database:"swiat"
})
con.connect((err)=>{
    if(err) console.log(err)
    else{
        console.log('polaczono')
    }
})
app.use(cors())
    axios.get('https://restcountries.com/v3.1/all').then((response)=>{
        const resp = response.data
        var currentTable =[]
        con.query(`SELECT * FROM kraje`,(err,result,fields)=>{
            if(err) console.log(err)
            else currentTable = result
            console.log(currentTable)
        })
        for(var i=0;i<=resp.length-1;i++){
            console.log(resp[i].name.common)
            console.log(currentTable[i])
                const sql = `INSERT INTO kraje(name, capital, population) VALUES ("${resp[i].name.common}","${resp[i].capital}",${resp[i].population})`
                con.query(sql, (err,result,fields)=>{
                })
                const sql2 = `UPDATE kraje SET area="${resp[i].area}" , kontynent="${resp[i].region}" WHERE name = "${resp[i].name.common}"`
                con.query(sql2,(err,result,fields)=>{
                    if(err) console.log(err)
                })
            
            
            
            
            
        }
        
    })
    app.get('/kontynent/:kontynent',(req,res)=>{
        const kontynent = req.params.kontynent
        const sql = `SELECT * FROM kraje WHERE kontynent='${kontynent}'`
        con.query(sql,function(err,result,fields){
            if(err) console.log(err)
            res.send(result)
        })
        
    })
    app.get('/populacja/:populacja',(req,res)=>{
        const populacja = parseInt(req.params.populacja)
        
            const sql = `SELECT * FROM kraje WHERE population>='${populacja}'`
            con.query(sql,function(err,result,fields){
                if(err) console.log(err)
                res.send(result)
            })
        
    })
    app.get('/region',(req,res)=>{
            const sql = `SELECT DISTINCT kontynent FROM kraje `
            con.query(sql,function(err,result,fields){
                if(err) console.log(err)
                res.send(result)
            })
        
    })
    app.get('/maxpopulacja',(req,res)=>{
        
            const sql = `SELECT population FROM kraje ORDER BY population DESC LIMIT 1`
            con.query(sql,function(err,result,fields){
                if(err) console.log(err)
                res.send(result)
            })
        
    })
    app.get('/add/:nazwa/:stolica/:pop/:area/:kon',(req,res)=>{
        const nazwa = req.params.nazwa
        const stolica = req.params.stolica
        const pop = parseInt(req.params.pop)
        const area = parseInt(req.params.area)
        const kon = req.params.kon
        const sql = `INSERT INTO kraje(name, capital, population, area, kontynent) VALUES ("${nazwa}","${stolica}","${pop}","${area}","${kon}")`
        con.query(sql,function(err,result,fields){
            if(err) console.log(err)
            res.send(result)
        })
    })

    app.listen(3000)