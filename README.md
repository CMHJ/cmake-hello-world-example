# CMake Hello World Example

For those of you who have been baffled by the sheer lack of coherent documentation on how to actually use CMake in a way that requires less effort than just writing your own Makefile, here is a hello world CMake project.

This repo is an example of how to build a simple binary and library in Cpp which can be installed and uninstalled to the system.

The project is explained with comments in the various files.

For those looking for the simplest experience, you don't need to worry about the `configure_file` line in `CMakeLists.txt` and by extension the `sqrt-config.cmake.in` file.
This is not necessary if you only want to build a simple library or binary for local use.

# Building

To actually build the project convention is the following commands:

```sh
mkdir build
cd build
cmake .. # This will generate the build files
make # This will actually compile the project
```

If the command line is not usable the CMake gui is also an option.

# Installing

```sh
cd build
sudo make install # to install if on Linux or Mac
sudo ldconfig 
```

The `ldconfig` command is to update the shared library cache on Linux.
Otherwise when running clsqrt it will fail as it can't find the library that was just installed to run it.

# Running

After installing a binary named `clsqrt` will be added to the PATH and a shared library `libsqrt.so` will be installed as well.

Example:

```sh
clsqrt 49

# Output
7
```

If there is an error and you are on Linux, please run `sudo ldconfig` and try again.

# Uninstalling

```sh
sudo ./uninstall.sh
```

What this does is read the contents of `install_manifest.txt` in the build folder.
This file contains the paths of all files installed and so if they are passed to rm will effectively uninstall it from the system.

