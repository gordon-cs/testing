-- -*- lua -*-
-- ===========================================================================
-- modulefiles/MPI/openmpi/scalapack/2.0.2
-- Jonathan Senning
-- 2014-09-30
-- ===========================================================================

help( [[

ScaLAPACK is a library of high-performance linear algebra routines
for parallel distributed memory machines. ScaLAPACK solves dense and
banded linear systems, least squares problems, eigenvalue problems,
and singular value problems. 
]] )

------------------------------------------------------------------------------

local	basedir		= "/shared"
local	name		= "scalapack"
local	version		= "2.0.2"
local	mpi_version	= "openmpi"
local	prefix		= pathJoin( basedir, name, version, mpi_version )
local	module_family	= "ScaLAPACK"

------------------------------------------------------------------------------

whatis( "Name: ScaLAPACK" )
whatis( "Version: " .. pathJoin( version, mpi_version ) )
whatis( "Description: Scalable Linear Algebra" )
whatis( "URL: http://www.netlib.org/scalapack" )

------------------------------------------------------------------------------

-- prepend_path( "PATH",			pathJoin( prefix, "bin" ) )
-- prepend_path( "CPATH",			pathJoin( prefix, "include" ) )
prepend_path( "LIBRARY_PATH",		pathJoin( prefix, "lib" ) )
-- prepend_path( "LD_LIBRARY_PATH",	pathJoin( prefix, "lib" ) )

------------------------------------------------------------------------------

-- prepend_path( "MODULEPATH",
--    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
