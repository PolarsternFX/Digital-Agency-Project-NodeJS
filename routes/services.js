var express = require('express');
var router = express.Router();

router.get('/', function(req,res) {
res.render( 'services.hbs', { title: 'Services'});
});  
    
    
module.exports = router;
    