'use strict';
var os = require('os');
var nodeStatic = require('node-static');
var http = require('http');
var mime = require("mime-types");
var port = 1234;
var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var Request = require('request');

console.log("Server Started")
var server = require('http').Server(app);
app.use(bodyParser.json())
app.use(function (req, res) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, access_token");
})
// auth start
app.get('/users',  (req, res) => {
    console.log('node users api');
    var options = {
        url: 'https://dev-194276.okta.com/api/v1/users?limit=200',
        method: 'GET',
        headers: {
            'Content-Type': 'application/json',
            'Authorization': (req.headers || {}).Authorization,
            'Access-Control-Allow-Origin':'*'
        }
    };

    Request.get(options, function (err, val) {
        console.log('okta users api');
        if (err) {
            res.status(401).send(val.body)
            console.log(err);
        } else {
            res.status(200).send((val || {}).body)
            console.log(res)
        }
    })
}).listen(port,() => {
    console.log('server started on ' + port)
});