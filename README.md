# Maki Color Scripts

> Install scripts for colored output

⚠️ This package was written on and for Mac OS. If you would like to contribute a comprehensive update for Windows or other platform, please welcome!

## Install

```
npx maki-color install ./path/to/scripts
```

This installs the following scripts at `path/to/scripts`:

```
color.js
color.sh
```

## Requirements

- Mac OS
- Node >= 8
- NPM >= 5.3

## Usage

Shell scripts:

```sh
#!/bin/bash
# test.sh

source ./path/to/scripts/color.sh

color_init

color "${BLUE}Script is processing"
color "${YELLOW}Be careful of user input!"
color "${RED}Error!"
color "${GREEN}Script completed successfully."
```

JS scripts:

```js
// test.js

const { color, colorInit } = require('./path/to/scripts/color.js'):

colorInit();

color`{BLUE}Script is processing`;
color`{YELLOW}Be careful of user input!`;
color`{RED}Error!`;
color`{GREEN}Script completed successfully.`;
```

![Screenshot](./img/screenshot.png)0

## Configuration

Set the `$COLOR_ORIGIN` environment variable to turn off the file origin trace:

```
export COLOR_ORIGIN=false
```

![Screenshot with no origin trace](./img/screenshot_no-origin.png)

## Links

- [Github](https://github.com/underblob/maki-color)
- [NPM package](https://www.npmjs.com/package/maki-color)
- [Report a bug](https://github.com/underblob/maki-color/issues)
