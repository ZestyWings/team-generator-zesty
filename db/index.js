const connection = require("./connection");

class database {
  constructor(connection) {
    this.connection = connection;
  }
  //view all departments
  viewAllDepartments() {
    return this.connection
      .promise()
      .query("SELECT department.id, department.department FROM department;");
  }
  //view all role
  viewAllRoles() {
    return this.connection
      .promise()
      .query(
        "SELECT roles.id, roles.title, department.department AS departments, roles.salary FROM roles LEFT JOIN department on roles.department_id = department.id;"
      );
  }
  //view all employees
  viewAllEmployees() {
    return this.connection
      .promise()
      .query(
        "SELECT employees.id, employees.first_name, employees.last_name, roles.title, department.department AS department, role.salary;"
      );
  }
  //add a department
  addDepartment(department) {
    return this.connection
      .promise()
      .query("INSERT INTO department SET ?", department);
  }
  //add a role
  addRole(roles) {
    return this.connection.promise().query("INSERT INTO role SET ?", roles);
  }
  //add an employee
  addEmployee(employees) {
    return this.connection
      .promise()
      .query("INSERT INTO employee SET ?", employee);
  }
  //update an employee role
  updateEmployeeRole(employees) {
    return this.connection
      .promise()
      .query("UPDATE employee SET role_id = ? WHERE id = ?");
  }
}

module.exports = new database(connection);
