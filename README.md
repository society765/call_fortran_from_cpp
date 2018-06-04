# Call Fortran Subroutines from C++
This repo gives an example of calling Fortran subroutines from C++.
The compilation process is also automated with *cmake* and *makefile*.

## How to use

### Clone the repo
```bash
git clone https://github.com/society765/call_fortran_from_cpp.git
```

### First time
We use *cmake* to handle the compilation process.
You may want to modify the compiler options in the `CMakeLists.txt`
to fit your PC, Mac, or Linux. 

After you updated the compiler options, 
stay in the root directory of the project, and run
```bash
make init
```
This will use *cmake* to generate the makefile in `./build` directory 
that could automatically compile and link 
our C++ and Fortran sources and objects. 

### Compilation
After the above initialization process, still stay in the 
root directory of the project, and run 
```bash 
make
```
A binary executable will be generated at the default location `./bin/a.out`. 
You may simply run `make` any time you want to re-build the project. 

### Clean
If there are any bugs in the building process, 
or if you want to remove the cmake building stuffs, 
you may run 
```bash
make clean
``` 
at the root directory of the project. Then the `./build` directory will be removed. 

## LICENSE 
MIT
