const mysql = require('mysql2'); // Ensure you have required the mysql package
require('dotenv').config(); // Ensure dotenv is configured

const host= process.env.DB_HOST
const user= process.env.DB_USER
  const password= process.env.DB_PASSWORD
  const  database= process.env.DB_NAME
const  port= process.env.DB_PORT


const db = mysql.createPool({
  host: host,
  user: user,
  password: password,
  database: database,
  port: port, // Correctly access DB_PORT
});

module.exports = db; // Export the db object if needed
