-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Compiler/gcc/mpi/mpich/3.1.4
-- Jonathan Senning
-- 2014-10-09
-- ===========================================================================

help( [[

MPICH is a high-performance and widely portable implementation of the
MPI-3.0 standard from the Argonne National Laboratory.  This release
has all MPI 3.0 functions and features required by the standard with
the exception of support for the "external32" portable I/O format and
user-defined data representations for I/O.
]] )

------------------------------------------------------------------------------

local	name		= "mpich"
local	version		= "3.1.4"
local	prefix		= pathJoin( "/shared", name, version )
local	module_family	= "MPI"

------------------------------------------------------------------------------

whatis( "Name: MPICH" )
whatis( "Version: " .. version )
whatis( "Description: High performance portable MPI library" )
whatis( "URL: http://www.mpich.org" )

------------------------------------------------------------------------------

setenv( "SLURM_MPI_TYPE", "pmi2" )

prepend_path( "PATH", pathJoin( prefix, "bin" ) )
prepend_path( "LIBRARY_PATH", pathJoin( prefix, "lib" ) )
prepend_path( "LD_LIBRARY_PATH", pathJoin( prefix, "lib" ) )
if os.getenv( "MANPATH" ) == nil then
  prepend_path( "MANPATH", capture( "manpath" ) )
end
prepend_path( "MANPATH", pathJoin( prefix, "share/man" ) )

------------------------------------------------------------------------------

prepend_path( "MODULEPATH",
    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
