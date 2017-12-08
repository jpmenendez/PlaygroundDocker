//Agregamos esto
require('dotenv').config();

var express = require('express');

var app = express();
var connection = require('./conexionbd');
app.get('/hola', function (req,res) { res.send ("Hola Mundo")});
app.get('/personajes', function(req, res){
  connection.query("SELECT * FROM personajes",
    function(error, results, fields){
      if (error) return res.status(500).json(error);
      res.json(results);
    });
});

app.listen(8080, '0.0.0.0');
module.exports = app;
