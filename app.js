/* Configuración de DOTENV */
require('dotenv').config();

var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');


/* CONFIGURAR el MOTOR DE VISTAS */
const hbs = require('express-handlebars');

const indexRouter = require('./routes/index');
const servicesRouter = require('./routes/services');
const aboutRouter = require('./routes/about');
const teamRouter = require('./routes/team');
const contactRouter = require('./routes/contact');

const { handlebars } = require('hbs');

const app = express();


/* Conexión a DB */
require('./utilities/connection');


// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

/* Configuración de las CARPETAS y ARCHIVOS de MOTOR DE VISTAS */
app.engine('hbs', hbs ({
extname:'.hbs',
defaultLayout: 'layout',
layoutsDir: 'views/layout',
partialsDir: 'views/partials'
}));

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


//Definición de Rutas

app.use('/', indexRouter);
app.use('/services', servicesRouter);
app.use('/about', aboutRouter);
app.use('/team', teamRouter);
app.use('/contact', contactRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;

