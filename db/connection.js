const mysql = require("mysql2");

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "G00fynumb3r5",
  database: "employees",
});

connection.connect(function (err) {
  if (err) {
    console.error(err);
    console.log("Can't connect to database.");
    process.exit(1);
  }
});

module.exports = connection;
