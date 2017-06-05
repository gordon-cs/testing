-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Compiler/gcc/mpi/openmpi/1.10.3
-- Jonathan Senning
-- 2016-06-20
-- ===========================================================================

help( [[

The Open MPI Project is an open source Message Passing Interface
implementation that is developed and maintained by a consortium
of academic, research, and industry partners.
]] )

------------------------------------------------------------------------------

local	name		= "openmpi"
local	version		= "1.10.3"
local	root		= string.match( myFileName(), "/[^/]*" )
local	prefix		= pathJoin( root, name, version )
local	module_family	= "MPI"

------------------------------------------------------------------------------

whatis( "Name: OpenMPI" )
whatis( "Version: " .. version )
whatis( "Description: High performance portable MPI library" )
whatis( "URL: http://www.open-mpi.org" )

------------------------------------------------------------------------------

-- pushenv( "SLURM_RESV_PORTS", "12" )
pushenv( "SLURM_MPI_TYPE", "pmi2" )

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
