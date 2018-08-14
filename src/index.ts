import * as fs from 'fs';
import { checkFolderSync, replaceXMLValues } from './utils';

// Obtain the service configuration
/* tslint:disable:no-var-requires */
const CONFIG: {
  'output': {
    'folder': string,
    'file': string,
  },
  'template_file': {
    'path': string,
    'name': string,
    'params': object,
  },
} = require('../config/sysconf.json');

// Obtains the path to the template file
const TEMPLATE_FILE = CONFIG.template_file.path +
  '/' + CONFIG.template_file.name;

// Obtain params from the config file
const PARAMS = CONFIG.template_file.params;

// Obtains the path to the output folder
const OUTPUT_FOLDER = CONFIG.output.folder;

// Obtains the path to the output file
const OUTPUT_FILE = OUTPUT_FOLDER + '/' + CONFIG.output.file;

/**
 * Promise which reads a xml file, changes some parameters and writes the output
 * to a file.
 */
new Promise((resolve: (r: Buffer) => void, reject: (err: string) => void) => {

  // Read template file
  return fs.readFile(TEMPLATE_FILE, (err: Error, data: Buffer) => {
    if (err) { return reject('Error reading file: ' + err); }
    return resolve(data);
  });

}).then((template) => {

  // Replace params
  return replaceXMLValues(template.toString(), PARAMS);

}).then((resultDocument) => {

  // OUTPUT_FOLDER MUST exist before writting the output file
  checkFolderSync(OUTPUT_FOLDER);
  return resultDocument;

}).then((resultDocument) => {

  // Write output file
  return fs.writeFile(OUTPUT_FILE, resultDocument, (err: Error) => {
    if (err) { return Promise.reject('Error writing file: ' + err); }
    return Promise.resolve();
  });

}).catch((error) => {

  // Printing possible errors
  process.stdout.write(error);
  process.exit(0);

});