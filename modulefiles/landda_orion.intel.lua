help([[
loads Land DA prerequisites for Orion/Intel
]])

prepend_path("MODULEPATH", "/work/noaa/da/role-da/spack-stack/modulefiles")
load("miniconda/3.9.7")

--prepend_path("MODULEPATH", pathJoin(os.getenv("EPICHOME"),"spack-stack/envs/landda-release-1.0-intel/install/modulefiles/Core"))
prepend_path("MODULEPATH", "/work2/noaa/da/role-da/spack-stack-feature-r2d2-mysql/envs/unified-4.0.0-rc1/install/modulefiles/Core")

load("stack-intel")
load("stack-intel-oneapi-mpi")
load("netcdf-c")
load("netcdf-fortran")
load("parallel-netcdf")
load("cmake")
load("ecbuild")
load("stack-python")
load("py-numpy")
load("py-netcdf4")

setenv("CC", "mpiicc")
setenv("CXX", "mpiicpc")
setenv("FC", "mpiifort")
setenv("JEDI_INSTALL", "/work2/noaa/epic-ps/cbook")

whatis("Description: Land DA build environment")
