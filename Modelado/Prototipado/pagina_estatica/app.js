require('dotenv').config()
const express = require("express");
const app = express();
const hbs = require('hbs')
const port = process.env.PORT;

app.use( express.static("public") );

hbs.registerPartials(__dirname + "/public/views/partials", function(err){});
app.set("view engine", "hbs");
app.set("views", __dirname + "/public/views");

app.get('/registrar', (reg, res) => {
    res.sendFile(__dirname + '/public/formulario.html');
});

app.get('/imagen', (reg, res) => {
    res.sendFile(__dirname + '/public/img/unnamed.png');
});

app.get('/', (reg, res) => {
    res.render("login", {
        nombre: "login"
    })
});

app.get('/home', (reg, res) => {
    res.render("home", {
        nombre: "home"
    })
});

app.get('/home_cliente', (reg, res) => {
    res.render("home_cliente", {
        nombre: "home_cliente"
    })
});

app.get('/contacto', (reg, res) => {
    res.send('contacto');
});

app.get('*', (reg, res) => {
    res.sendFile(__dirname + '/public/404.html');
});

app.listen(port, () => {
    console.log(`escuchando por el puerto ${port}`);
});