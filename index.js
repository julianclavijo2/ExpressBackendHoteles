'use strict' 

const express = require('express')
const bodyParser = require('body-parser')
const cors = require("cors")

const conexionSQL = require('./database')


const app = express()
const port = process.env.PORT || 3001

app.use(bodyParser.urlencoded({ extended: false}))
app.use(bodyParser.json())
app.use(cors())


/*Listar Hoteles*/
app.get('/api/hoteles/' , (req , res)=>{
    var table = 'hoteles'
    conexionSQL.query(`SELECT * FROM ${table}` , (err , rows , fields)=>{
       if (!err) {
           res.json(rows)
       } else {
           console.log(err)
       }
   })
})


/*Listar Hoteles  por parametro*/
app.get('/api/hoteles/:param' , (req , res)=>{
    const {param} = req.params
    conexionSQL.query(`SELECT * FROM turismo.hoteles where nombrehotel LIKE  "%${ param }%"` , (err , rows , fields)=>{
       if (!err) {
           res.json(rows)
       } else {
           console.log(err)
       }
   })
})

/*Crear un nuevo registro de Hotel*/
app.post('/api/hoteles' , (req , res)=>{
    console.log(req.body);
    res.status(404).send({message: 'El producto no existe'})
    
})


/*Actulizar Registro de hotel*/
app.put('/api/hoteles/:hotelId' , (req , res)=>{
    const {hotelId} = req.params
    conexionSQL.query(`DELETE FROM turismo.hoteles where idhotel = "${ hotelId }"` , (err , rows , fields)=>{
        if (!err) {
            res.json(rows)
        } else {
            console.log(err)
        }
    })
})


/*Eliminar Hotel*/
app.delete('/api/hoteles/:hotelId' , (req , res)=>{
    const {hotelId} = req.params
    conexionSQL.query(`DELETE FROM turismo.hoteles where idhotel = "${ hotelId }"` , (err , rows , fields)=>{
        if (!err) {
            res.json(rows)
        } else {
            console.log(err)
        }
    })
    
})

/*Escuchando por determinado puerto*/
app.listen(port, ()=>{
    console.log(`Api  CORRIENDO EN EL PUERTO ${port}`)
})
