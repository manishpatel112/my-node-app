// index.js
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello! Your Node.js app is LIVE on EC2 via CodePipeline & CodeDeploy ');
});

const PORT = process.env.PORT || 3000;
// IMPORTANT: listen on 0.0.0.0 to allow external access
app.listen(PORT, '0.0.0.0', () => {
  console.log(`Server running on http://0.0.0.0:${PORT}`);
});
