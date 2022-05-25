const { prompt } = require("inquirer");
const db = require("./db");

require("console.table");

init();

function init() {
  const logoText = logo({ name: "Employee Manager" }).render();

  console.log(logoText);

  mainPrompts();
}
// add department
// enter name of department
// add a role
// enter name, salary, department for role
// add to database
// add an employee
// add employee first name, last name , role, manager
// add to database
// update and employee role
// select an employee to update
