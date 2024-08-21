const express = require('express')
const app = express()

app.get('/', (req, res) => {
  res.send('<h3>Hello, using express module. Test</h3>')
})

const port = process.env.PORT || 3000;
app.listen(port, () => console.log("listening on port ${port}"));
