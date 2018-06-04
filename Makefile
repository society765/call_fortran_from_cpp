# the default target, run 'make' to compile and generate exectuable
all: 
	@if [ -f build/Makefile ]; \
	then \
		cd build; make; \
		echo 'build successful'; \
	else \
		echo 'build failed, run `make init` first'; \
	fi;
.PHONY: all

# use cmake to generate Makefile in the build/ directory, 
# the 'make init' only needed run once
init:
	@mkdir build; cd build; cmake .. \
	&& echo 'cmake build is successful!' \
	|| echo 'cmake build is failed ...'
.PHONY: init

# clean the cmake build directory
clean:
	@rm -rf build/
	@echo 'the build directory is cleaned!'
.PHONY: clean