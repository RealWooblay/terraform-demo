const express = require('express');
const app = express();

// Basic route
app.get('/', (req, res) => {
    res.send('Hello from My Demo App!');
});

// Use PORT from environment or default to 8080
const port = process.env.PORT || 8080;
app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});