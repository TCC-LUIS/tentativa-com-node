const express = require('express')
const mysql = require('mysql')
const fs = require('fs')
const router = express.Router()

// Configuração do banco de dados MySQL
const banco = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'livraria'
})

// Teste de conexão
banco.connect(err => {
  if (err) {
    console.log('Erro ao conectar ao banco de dados:', err)
  } else {
    console.log('Conexão estabelecida com sucesso!')
  }
})

// Função para ler e executar o arquivo SQL
const executeSQLFile = filePath => {
  return new Promise((resolve, reject) => {
    fs.readFile(filePath, 'utf8', (err, sql) => {
      if (err) {
        return reject(err)
      }

      banco.query(sql, (err, result) => {
        if (err) {
          return reject(err)
        }
        resolve(result)
      })
    })
  })
}

// Rota para executar o arquivo SQL
router.get('/run-sql', async (req, res) => {
  try {
    const result = await executeSQLFile('./sql/livraria.sql')
    res.send('Arquivo SQL executado com sucesso!')
  } catch (err) {
    res.status(500).send('Erro ao executar o arquivo SQL: ' + err.message)
  }
})
module.exports = router
