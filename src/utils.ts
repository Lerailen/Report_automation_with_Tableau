import * as fs from 'fs';

/**
 * Takes a template and some params and puts the params in the respective
 * place at the template.
 * @param {string} template 
 * @param {Object} params 
 */
export function replaceXMLValues(template: string, data: Object) {
  let pattern: RegExp = /\%(\w+)\%/g; // %property%
  return template.replace(pattern, (_match, token) => (<any>data)[token]);
}

/**
 * Cheks if the entire path exists. If it doesn't it creates the required
 * folder.
 * @param {string} path Path to check.
 * @throws {error} If folder doesn't exists and can't be created.
 */
export function checkFolderSync(path: string) {
  if (!fs.existsSync(path)) {
    fs.mkdirSync(path, 0o755);
  }
}