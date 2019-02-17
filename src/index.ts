import * as fs from 'fs';
import { checkFolderSync, readFile, replaceXMLValues } from './utils';

// Obtain the service configuration
/* tslint:disable:no-var-requires */
const CONFIG: {
  'output': {
    'folder': string,
    'file': string,
  },
  'template_tableau': {
    'path': string,
    'name': string,
  },
  'params': {
    'actual_month': string,
    'actual_year': string,
  },
  'queries': {
    'path': string,
    'names': string[],
  },
} = require('../config/sysconf.json');

// Obtains the path to the template file
const TEMPLATE_FILE = CONFIG.template_tableau.path +
  '/' + CONFIG.template_tableau.name;

// Obtain params from the config file
const PARAMS = CONFIG.params;

// Obtains the path to the output folder
const OUTPUT_FOLDER = CONFIG.output.folder;

// Obtains the path to the output file
const OUTPUT_FILE = OUTPUT_FOLDER + '/' + CONFIG.output.file;

// Obtains the path to the queries
const QUERIES_FOLDER = CONFIG.queries.path;

// Obtains queries file names
const QUERIES_NAMES = CONFIG.queries.names;

/**
 * Promise which reads a xml file, changes some parameters and writes the output
 * to a file.
 */
new Promise((resolve: () => void, _: (err: string) => void) => {
  return resolve();
})
.then(() => {

  // Read all queries
  let promises = [];
  for (let i = 0; i < QUERIES_NAMES.length; i++){
    let filename = QUERIES_FOLDER + '/' + QUERIES_NAMES[i];
    promises.push(readFile(filename)); //return {path:'/path',data:'text1..'}[]
  }
  return Promise.all(promises);

})
.then((queries)=>{

  // There are certain queries which require a range of time. In this case
  // the oldest date is setted to one year because of reporting reasons.
  PARAMS["last_year"] = (parseInt(PARAMS["actual_year"]) - 1);

  // Replace all ocurrences in each query
  for(let i = 0; i< queries.length; i++){
    (queries[i] as any).data = replaceXMLValues((queries[i] as any).data.toString(), PARAMS);
  }
  // console.log("The values of the queries are replaced")
  return queries;
})
.then((queries)=>{
  
  // Reads template file. Returns array [queries, template]
  return readFile(TEMPLATE_FILE).then((template)=> {return [queries, template]});

}).then(([queries, template]) => {

  /*
    Sets the name of the query and it's value in a new object
    With the template and the new object the final queries are placed
    filanQueries=
    {
      'name_of_the_file': 'query1_query1'
    }
  */

  let finalQueries={};
  for(let query in queries){
    // Path were the file was readed
    let path:string = (queries as any)[query].path;
    let key:string = path.substring(QUERIES_FOLDER.length+1, path.length-4);
    finalQueries[key]= queries[query].data
  }

  let replaceObject= {...finalQueries, ...PARAMS};

  // Replace properties in template file
  return replaceXMLValues((template as any).data.toString(), replaceObject);

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