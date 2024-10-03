const express = require('express')
const app = express()
const databaseRoute = require('./routes/ligacao')

// Usar as rotas do arquivo ligacao.js para a URL base "/ligacao"
app.use('/ligacao', databaseRoute)

// Definir a porta do servidor
app.listen(3000, () => {
  console.log(`Servidor rodando na porta :3000`)
})
