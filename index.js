const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send("Hello! Your Node.js App is LIVE on EC2 through CodePipeline & CodeDeploy ");
});

app.listen(3000, '0.0.0.0', () => {
    console.log("Server running on http://3.108.223.222:3000");
});
