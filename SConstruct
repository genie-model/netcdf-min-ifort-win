from __future__ import print_function
import os, os.path, sys, glob

if 'TARGET_VS_ARCH' not in os.environ:
    print("")
    print("ERROR: TARGET_VS_ARCH isn't set!")
    print("You're probably not running from an Intel Fortran configured " +
          "command prompt.")
    print("")
    sys.exit("BUILD CANCELLED")

env = Environment(ENV = os.environ,
                  HOST_ARCH=os.environ['TARGET_VS_ARCH'],
                  TOOLS = ['default', 'msvs', 'ifort'],
                  CPPPATH=[os.curdir],
                  F90FLAGS=['/Inetcdff', '/Inetcdf', '/fpp'])

Export('env')
cobjs = env.SConscript(os.path.join('netcdf', 'SConscript'))
fobjs = env.SConscript(os.path.join('netcdff', 'SConscript'))
fobjs = filter(lambda o: str(o)[-4:] != '.mod', fobjs)

env.SharedLibrary(['netcdf_f90.dll', 'netcdf_f90.lib'], cobjs + fobjs)
