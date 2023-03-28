help([[
loads Land DA prerequisites for Hera/Intel
]])

prepend_path("MODULEPATH", "/scratch1/NCEPDEV/global/spack-stack/modulefiles")
load("miniconda/3.9.12")

prepend_path("MODULEPATH", "/scratch1/NCEPDEV/nems/role.epic/spack-stack/spack-stack-1.3.0/envs/unified-dev/install/modulefiles/Core")

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
setenv("JEDI_INSTALL", "/scratch1/NCEPDEV/stmp4/Cameron.Book/landDA_work")

whatis("Description: Land DA build environment")
