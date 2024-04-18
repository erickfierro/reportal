
# Reportal

Reportal is a project for inventory reporting and management written in `COBOL` language.
## Features

- Read inventory from an external file
- Generate reports in console

## Compiler install

Download the program [OpenCobolIDE](https://launchpad.net/cobcide/+download) available for Windows, GNU/Linux and Mac OSX.

Install only the compiler in `GNU/Linux`

```bash
# downloads and builds a local cache of the list of available
packages
sudo apt-get update
# install gnucobol4
sudo apt-get install gnucobol4
```

## Compiler program GNU/Linux

To compile the program in the `/bin` folder

```bash
# create folder /bin
mkdir bin
```

```bash
# compile program
cobc -x -o bin/NameProgram NameProgram.cbl
```

To run main program execute

```bash
./bin/MAIN-PROGRAM
```

## Authors

- [@erickfierro](https://github.com/erickfierro)
