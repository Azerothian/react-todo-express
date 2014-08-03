require('node-jsx').install({extension: '.jsx'})

serveStatic = require('serve-static')

debug = require("debug")("react-todo-express")
express = require "express"
app = express()
port = 1337

app.use require("react-express")({
  extensions: [".js", ".json", ".jsx", ".coffee"]
  basedir: "./app/files/"
  debug: false # real expensive atm if true
})
app.use require('serve-static')("./app/files")
app.listen(port)
