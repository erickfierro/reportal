
# Reportal

Reportal is a project for inventory reporting and management written in `COBOL` language.
## Features

- Read inventory from an external file
- Generate reports in console

## Compiler Install

Download the program [OpenCobolIDE](https://launchpad.net/cobcide/+download) available for Windows, GNU/Linux and Mac OSX.

Install only the compiler `GNU/Linux`

```bash
# install gnucobol4
sudo apt-get install gnucobol4
```

## Compile COBOL Program

Compile executable at current path
```bash
cobc -x NameProgram.cbl
```

Compile executable to a specific path
```
cobc -x "path" NameProgram.cbl
```

## Authors

- [@erickfierro](https://github.com/erickfierro)
