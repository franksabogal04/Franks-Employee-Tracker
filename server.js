// Importing the necessary packages and modules for a working code
const inquirer = require('inquirer');
const { retrevingDepartments } = require('./db/queries');
const ConsoleT = require('console.table');


// Function for departments to be displayed
function DepartmentsDrop() {
    retrevingDepartments()
        .then((departments) => {
            console.log('Departments');

            // use variable for console.table
            ConsoleT(departments);
            CentralDispaly();
        })
        .catch((error) => {
            console.log('this acction has created an error please try again', error);
            CentralDispaly();
        });
}


// Function to show the beginning of the app
function CentralDispaly() {
    inquirer
        .prompt([
            {
                type: 'list',
                name: 'action',
                message: 'whats the next step?',
                choices: [
                    'Retrieve all departments',
                    'Quit',
                ],
            },
        ])
        .then((answers) => {
            switch (answers.action) {
                case 'Retrieve all departments':
                    DepartmentsDrop();
                    break;

                case 'Quit':
                    console.log('see ya!');
                    process.exit();

                default:
                    console.log('this option is not availble. please try again!');
                    CentralDispaly();
            }
        });
}

// the centraldisplay will be called in order to start the app
CentralDispaly();


