-- -*- lua -*-
-- ===========================================================================
-- modulefiles/MPI/mpich/mpe2/2.4.9b
-- Jonathan Senning
-- 2016-03-26
-- ===========================================================================

help( [[

The MPE extensions provide a number of useful facilites for MPI
programmers.  These include several profiling libraries to collect
information on MPI programs, including logfiles for post-mortum
visualization and real-time animation. Also included are routines to
provide simple X window system graphics to parallel programs. MPE may
be used with any implemenation of MPI.
]] )

------------------------------------------------------------------------------

local   basedir         = "/shared"
local	name		= "mpe2"
local	version		= "2.4.9b"
local	mpi_version	= "mpich"
local	prefix		= pathJoin( basedir, name, version, mpi_version )
local	module_family	= "MPE2"

------------------------------------------------------------------------------

whatis( "Name: MPE" )
whatis( "Version: " .. pathJoin( version, mpi_version ) )
whatis( "Description: MPI Parallel Environment" )
whatis( "URL: http://www.mcs.anl.gov/research/projects/perfvis/software/MPE" )

------------------------------------------------------------------------------

prepend_path( "PATH",			pathJoin( prefix, "bin" ) )
prepend_path( "CPATH",			pathJoin( prefix, "include" ) )
prepend_path( "LIBRARY_PATH",		pathJoin( prefix, "lib" ) )
prepend_path( "LD_LIBRARY_PATH",	pathJoin( prefix, "lib" ) )

------------------------------------------------------------------------------

-- prepend_path( "MODULEPATH",
--    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
