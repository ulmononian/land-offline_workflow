help([[
loads Land DA prerequisites for Orion/Intel
]])

prepend_path("MODULEPATH", "/work/noaa/da/role-da/spack-stack/modulefiles")
load("miniconda/3.9.7")

prepend_path("MODULEPATH", "/work/noaa/epic-ps/role-epic-ps/spack-stack/spack-stack-1.3.0/envs/unified-env/install/modulefiles/Core")

load("stack-intel")
load("stack-intel-oneapi-mpi")
load("netcdf-c")
load("netcdf-fortran")
load("parallel-netcdf")
load("cmake")
load("ecbuild")
load("stack-python")
load("py-netcdf4")

setenv("CC", "mpiicc")
setenv("CXX", "mpiicpc")
setenv("FC", "mpiifort")
setenv("JEDI_INSTALL", "/work2/noaa/epic-ps/cbook")

whatis("Description: Land DA build environment")
