import * as fs from 'fs';

let config: Object = require('../config/config.json');

// Obtains the path to the template file
const TEMPLATE_FILE = (<any>config)['template_file']['path'] + '/' + (<any>config)['template_file']['name'];
// Obtain params from the config file
const PARAMS = (<any>config)['template_file']['params'];

// Obtains the path to the output folder
const OUTPUT_FOLDER = (<any>config)['output']['folder'];
// Obtains the path to the output file
const OUTPUT_FILE = OUTPUT_FOLDER + '/' + (<any>config)['output']['file'];

/**
 * Takes a template and some params and puts the params in the respective
 * place at the template.
 * @param {string} template 
 * @param {Object} params 
 */
function replaceXMLValues(template: string, data: Object) {
  let pattern: RegExp = /\%(\w+)\%/g; // %property%
  return template.replace(pattern, (_match, token) => (<any>data)[token]);
}

/**
 * Promise which reads a xml file, changes some parameters and writes the output
 * to a file.
 */
new Promise((resolve: Function, reject: Function) => {

  // Read template file
  return fs.readFile(TEMPLATE_FILE, (err, data) => {
    if (err) { return reject('Error reading file: ' + err); }
    return resolve(data);
  });

}).then((template) => {

  // Replace params
  return replaceXMLValues(template.toString(), PARAMS)

}).then((resultDocument) => {

  // Write output file
  // @todo output_folder MUST exist before writting the output file
  return fs.writeFile(OUTPUT_FILE, resultDocument, (err) => {
    if (err) { return Promise.reject('Error writing file: ' + err); }
    return Promise.resolve();
  });

}).catch((error) => {

  console.error(error);
  process.exit(0);

});