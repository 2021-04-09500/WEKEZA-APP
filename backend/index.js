//declaration and init
const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser'); //1

const app = express();
const port = 5000;

app.use(bodyParser.json()); //

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





// API endpoint for user login
/*app.post('/api/login', (req, res) => {
  const { username, password } = req.body;

  // For now, let's assume a simple login success response
  if (username === 'validUser' && password === 'password123') {
    res.json({ success: true, message: 'Login successful' });
  } else {
    res.json({ success: false, message: 'Invalid credentials' });
  }
});*/

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});



// Retrieve all users 
app.get('/users', function (req, res) {
  db.query('SELECT * FROM users', function (error, results, fields) {
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

  db.query('SELECT * FROM users where email=?', user_email, function (error, results, fields) {
    if (error) throw error;
    return res.send({
      error: false,
      data: results[0],
      message: 'users list.'
    });

  });
});

// Add a new user  
app.post('/register', (req, res) => {

  const { name, email, cds_account, crdb_account, password, phone } = req.body;

  if (!name || !email) {
    return res.status(400).json({
      error: true,
      message: 'Both name and email are required fields',
    });
  }

  // Check if the email already exists in the database
  const checkemailQuery = 'SELECT COUNT(*) as count FROM users WHERE email = ?';

  db.query(checkemailQuery, [email], (error, results) => {
    if (error) {
      console.error('Error checking email:', error);
      return res.status(500).json({
        error: true,
        message: 'Error checking email',
      });
    }

    const emailExists = results[0].count > 0;

    if (emailExists) {
      return res.status(409).json({
        error: true,
        message: 'email already exists',
      });
    }

    // If the email doesn't exist, proceed to insert the user
    const insertQuery = 'INSERT INTO users (name, email,cds_account,crdb_account,password,phone) VALUES (?,?,?,?,?,?)';

    db.query(insertQuery, [name, email, cds_account, crdb_account, password, phone], (error, results) => {
      if (error) {
        console.error('Error registering user:', error);
        return res.status(500).json({
          error: true,
          message: 'Error registering user',
        });
      }

      console.log('User registered successfully');
      return res.status(201).json({
        error: false,
        message: 'User registered successfully',
      });
    });
  });
});


//  Update user with email
app.put('/user', function (req, res) {
  let user_email = req.body.user_email;
  let user = req.body.user;
  if (!user_id || !user) {
    return res.status(400).send({ error: user, message: 'Please provide user and user_email' });
  }
  db.query("UPDATE users SET user = ? WHERE email = ?", [user, user_email], function (error, results, fields) {
    if (error) throw error;
    return res.send({ error: false, data: results, message: 'user has been updated successfully.' });
  });
});


//  Update user with id
app.put('/user', function (req, res) {
  let user_email = req.body.user_email;
  let user = req.body.user;
  if (!user_email || !user) {
    return res.status(400).send({ error: user, message: 'Please provide user and user_email' });
  }
  db.query("UPDATE users SET user = ? WHERE email = ?", [user, user_email], function (error, results, fields) {
    if (error) throw error;
    return res.send({ error: false, data: results, message: 'user has been updated successfully.' });
  });
});
