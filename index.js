var fs = require('fs');

/**
 * Takes a template and some params and puts the params in the respective
 * place at the template.
 * @param {*} template 
 * @param {*} params 
 */
function replaceValues(template, data) {
  const pattern = /\%(\w+)\%/g; // %property%
  return template.replace(pattern, (match, token) => data[token]);
}

// Obtenemos los parámetros de configuración del json
var params = require("./parameters.json");

// Obtenemos el fichero template
fs.readFile("template_prueba01.twb", (err, template)=>{
  // fs.readFile("template.twb", (err, template)=>{
  if(err){
    console.log("Error reading template file: " + err);
    process.exit(1);
  }
  console.log("Readed file");

  // Sustituimos los valores en el template
  var finalDoc = replaceValues(template.toString(), params)

  // Output file
  fs.writeFile("resultFile_prueba01.twb", finalDoc, (err)=>{
    if(err){
      console.log("Error writing result file: " + err);
      process.exit(1);
    }
    console.log("Writted file");
  });

});