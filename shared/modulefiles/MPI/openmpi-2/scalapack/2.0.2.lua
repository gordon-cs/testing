-- -*- lua -*-
-- ===========================================================================
-- modulefiles/MPI/openmpi-2/scalapack/2.0.2
-- Jonathan Senning
-- 2016-10-06
-- ===========================================================================

help( [[

ScaLAPACK is a library of high-performance linear algebra routines
for parallel distributed memory machines. ScaLAPACK solves dense and
banded linear systems, least squares problems, eigenvalue problems,
and singular value problems. 
]] )

------------------------------------------------------------------------------

local	basedir		= string.match( myFileName(), "/[^/]*" )
local	name		= "scalapack"
local	version		= "2.0.2"
local	mpi_version	= "openmpi/2.0"
local	prefix		= pathJoin( basedir, name, version, mpi_version )
local	module_family	= "ScaLAPACK"

------------------------------------------------------------------------------

whatis( "Name: ScaLAPACK" )
whatis( "Version: " .. pathJoin( version, mpi_version ) )
whatis( "Description: Scalable Linear Algebra" )
whatis( "URL: http://www.netlib.org/scalapack" )

------------------------------------------------------------------------------

prepend_path( "LIBRARY_PATH", pathJoin( prefix, "lib" ) )

------------------------------------------------------------------------------

-- prepend_path( "MODULEPATH",
--    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
