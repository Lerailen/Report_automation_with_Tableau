# NAT's TFM

Service which applies some params in a template.

## Table of contents

* [NAT's TFM](#NAT's-TFM)
* [Table of contents](#table-of-contents)
* [Installation](#installation)
* [Usage](#usage)
* [Contributing](#contributing)
* [License](#license)

## Installation

```bash

# Installs all dependencies
npm install

```

## Ussage

```bash

# Compiles all typescript to javascript
npm run build

# Runs the service
npm start

```

The config file provides a way to change the input and output of the service. It
also allows to change the queries done to the database.
[System configuration](./config/sysconf.json):

```json
{
  "output": {
    "folder": "example_output_folder",
    "file": "example_output_file"
  },
  "template_file": {
    "path": "example_template_file_path",
    "name": "example_template_file_name",
    "params": {
      "query_x":"",
      "query_x+1":""
    }
  }
}
```

## Contributing

To contribute please generate a pull request to the project

## License

MIT LICENSE Copyright (c) 2018-present, Natalia Cervelló Fenollar