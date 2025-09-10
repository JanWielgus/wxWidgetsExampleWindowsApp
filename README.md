# wxWidgetsExampleWindowsApp
Example, ready to use wxWidgets Windows application build by cmake

# Prerequisites

You have to install some compiler, that cmake can find to build this application.

I have installed the MinGW via msys2 on Windows (https://www.msys2.org/). On Linux it would be easier.

# How to use

This is the simplest way that I found to start with wxWidgets.

To run the simple app (that is basically the code from wxWidgets/samples/minimal) you have to:
- run `build_and_run.bat` script (on Windows)
- wait several minutes for the first time

**That's it. You don't have to precompile the wxWidgets, set any options. CMake will do everything for you!**

On the following runs it will be much faster.

On Linux you should be able to deduce what to do from `build_and_run.bat`. Maybe one day I will add a ready to use script (I'm now in a hurry).
