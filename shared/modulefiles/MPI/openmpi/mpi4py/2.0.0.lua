-- -*- lua -*-
-- ===========================================================================
-- modulefiles/MPI/openmpi/mpi4py/2.0.0
-- Jonathan Senning
-- 2015-12-07
-- ===========================================================================

help( [[

Provides Python bindings for the Message Passing Interface (MPI) standard.
It is implemented on top of the MPI-1/2/3 specification and exposes an API
which grounds on the standard MPI-2 C++ bindings.
]] )

------------------------------------------------------------------------------

local   basedir         = "/shared"
local	name		= "mpi4py"
local	version		= "2.0.0"
local	mpi_version	= "openmpi"
local	prefix		= pathJoin( basedir, name, version, mpi_version )
local	module_family	= "MPI4PY"

------------------------------------------------------------------------------

whatis( "Name: mpi4py" )
whatis( "Version: " .. pathJoin( version, mpi_version ) )
whatis( "Description: MPI for Python" )
whatis( "URL: mpi4py.scipy.org" )

------------------------------------------------------------------------------

prepend_path( "PYTHONPATH", pathJoin( prefix, "lib/python3.5/site-packages" ) )

prepend_path( "PATH",			pathJoin( prefix, "bin" ) )

------------------------------------------------------------------------------

-- prepend_path( "MODULEPATH",
--    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
