/* Conexión a DB */
const config = require('../config/config')
const mysql = require('mysql2');

const connection = mysql.createConnection(config.mysql);

console.info(config.mysql);
connection.connect((error) => {
if(error) {
    console.error(error);
    process.exit();
}
console.log('Succesfully connected');
});

module.exports = connection;
