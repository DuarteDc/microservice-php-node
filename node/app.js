const express = require('express')
const app = express()
const port = 3000

const users = [
  { id: 1, name: 'Alice' },
  { id: 2, name: 'Bob' }
]

app.get('/users', (req, res) => {
  res.json(users)
})
app.listen(port, () => {
  console.log(`User service listening at http://localhost:${port}`)
})
