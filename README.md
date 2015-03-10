# netcdf-min-ifort-win

Minimal Fortran 90 Netcdf build for Windows: getting F90 NetCDF
working on Windows is a bit of a trial.  This repository has an
absolutely minimal subset of the NetCDF C and Fortran libraries with
build scripts that produce Windows DLLs suitable for use with GENIE.

To build this, you need the following tools (know good versions are
given, though other versions might work too):

 * Python (2.7.9)
 * SCons (2.3.4)
 * Microsoft Visual Studio (12.0/2013)
 * Intel Visual Fortran (Composer XE 2015)

This build is made from:

 * NetCDF C 4.3.3.1
 * NetCDF Fortran 4.4.2

### Build instructions

If things are set up right, you should just be able to do `scons` to
build a DLL, associated import library and F90 module files.  "Set up
right" basically means that you need to have all the Intel Fortran
environment variables set up, which you can do by running one of the
specialised Command Prompt programs provided under the Intel Fortran
program group in the Start menu.  You have to choose between 32- and
64-bit environments, but once you've done that, everything should
work.  (**Note that I've only tested 32-bit builds so far!**)

For use with GENIE, the build outputs need to be put into the `ia32`
(32-bit) or `intel64` (64-bit) directories, both of which include
`lib` and `include` subdirectories.  The GENIE installation process
can then download a zip file of the build results to include in the
GENIE directory tree.
