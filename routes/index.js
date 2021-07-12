var express = require('express');
const { message } = require('statuses');
var router = express.Router();

const sqlConnect = require('../utilities/connection');

/* GET home page. */
        
router.get('/', function(req,res) {
res.render( 'index.hbs', { title: 'Index'});

  /* QUERY para Obtener Datos desde DBA/*  */
  sqlConnect.query('SELECT * FROM contactform', (error, result) => {
    if (error) {
      console.error(error);
      res.render('error');
    }
  console.log(result);
  res.render('index', { title: 'index', visitors: result });
  });
});


/* ENVIAR Datos a la DB 
router.get('/new-user', (req, res) => {
  res.render('new-user');
});

router.post('/create-user', (req, res) => {
  const contactform = (req.body);
  if (!contactform.name)
  return res.render('error');
  

  sqlConnect.query(`
  INSERT INTO \`name\` (\`email\`, \`phone\`, \`message\`)
  VALUES ('${contactform.name}', '${contactform.email}', '${contactform.phone}', '${contactform.message}');
  `,
  
  (err, result) => {
    if (err) {
      console.error(error);
      return res.render('error');
    }
    console.log(result);
    res.render('successForm', { name: contactform.name, result});
  }
  );
  });
  
router.get('/api', function(req, res) {
  res.json({message: ''});
});
*/

module.exports = router;
