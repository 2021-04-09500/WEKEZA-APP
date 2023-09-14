const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');

const app = express();
const port =  5003;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));

//database connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'wekezadb',
});

db.connect(error => {

    if (!error) {
        console.log('Connected to MySQL database');

    } else {
        throw error;
    }

});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});

// Retrieve all users 
app.get('/users', function (req, res) {
    db.query('SELECT * FROM user', function (error, results, fields) {
        if (!error) {

            return res.send({
                error: false,
                data: results,
                message: 'users list.'
            });

        } else {
            throw error;

        }


    });
});



// Add a new user  
app.post('/register', function (req, res) {
    let name = req.body.name;
    let email = req.body.email;
    let phone = req.body.phone;
    let cds_account = req.body.cds_account;
    let crdb_account = req.body.crdb_account;
    let password = req.body.password;
    if (!email) {
        return res.status(400).send({ error: true, message: 'Please provide email' });
    }
    if (!name) {
        return res.status(400).send({ error: true, message: 'Please provide full name' });
    }
    const user = {
        name: name,
        email: email,
        phone: phone,
        cds_account: cds_account,
        crdb_account: crdb_account,
        password: password
    };
    db.query("INSERT INTO user SET ?", user, function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'New user has been created successfully.' });
    });
});


// Retrieve user with email
app.get('/user/:email', function (req, res) {
    let user_email = req.params.email;
    if (!user_email) {
      return
      res.status(400).send({
        error: true,
        message: 'Please provide user_email'
      });
    }
  
    db.query('SELECT * FROM user WHERE email = ?', user_email, function (error, results, fields) {
      if (error) throw error;
      if (results.length === 0) {
        return res.send({
          error: true,
          message: 'User not found'
        });
      }
      return res.send({
        error: false,
        data: results[0],
        message: 'users list.'
      });
  
    });
  });

  //login
  app.post('/login', (req, res) => {
    const { email, password } = req.body;
  
    if (!email || !password) {
      return res.status(400).json({
        error: true,
        message: 'Please provide both email and password',
      });
    }
  
    const query = 'SELECT * FROM user WHERE email = ?';
    db.query(query, [email], (error, results, fields) => {
      if (error) {
        console.error('Database query error:', error);
        return res.status(500).json({
          error: true,
          message: 'Database error',
        });
      }
  
      if (results.length === 0) {
        return res.status(404).json({
          error: true,
          message: 'User not found',
        });
      }
  
      const user = results[0];
      if (user.password !== password) {
        return res.status(401).json({
          error: true,
          message: 'Invalid password',
        });
      }
  
      return res.json({
        error: false,
        data: user,
        message: 'Login successful',
      });
    });
  });

  //get uer portifolio 

  app.get('/portfolio/:user_id', (req, res) => {
    const userId = req.params.user_id;
  
    if (!userId) {
      return res.status(400).json({
        error: true,
        message: 'Please provide a user_id',
      });
    }
  
    const query = 'SELECT * FROM user_portfolio WHERE user_id = ?';
    db.query(query, [userId], (error, results, fields) => {
      if (error) {
        console.error('Database query error:', error);
        return res.status(500).json({
          error: true,
          message: 'Database error',
        });
      }
  
      if (results.length === 0) {
        return res.status(404).json({
          error: true,
          message: 'Portfolio not found for the user',
        });
      }
  
      return res.json({
        error: false,
        data: results,
        message: 'User portfolio data retrieved successfully',
      });
    });
  });


  

//  Update user with id
app.put('/register', function (req, res) {
    let user_email = req.body.user_email;
    let name = req.body.name;
    let phone = req.body.phone;
    let cds_account = req.body.cds_account;
    let crdb_account = req.body.crdb_account;
    let password = req.body.password;
    if (!user_email) {
      return res.status(400).send({ error: true, message: 'Please provide user_email'});
    }
  
    db.query("UPDATE user SET name = ?, phone = ?, cds_account = ?, crdb_account = ?, password = ? WHERE email = ?", [name, phone, cds_account, crdb_account, password, user_email], function (error, results, fields) {
      if (error) throw error;
      return res.send({ error: false, data: results, message: 'user has been updated successfully.' });
    });
  });
  
  
  