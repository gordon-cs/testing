-- -*- lua -*-
-- ===========================================================================
-- modulefiles/MPI/openmpi-2/namd/2.11
-- Jonathan Senning
-- 2016-10-06
-- ===========================================================================

help( [[

NAMD is a parallel molecular dynamics program for UNIX platforms designed
for high-performance simulations in structural biology.
]] )

------------------------------------------------------------------------------

local	basedir		= string.match( myFileName(), "/[^/]*" )
local	name		= "namd"
local	version		= "2.11"
local	mpi_version	= "openmpi/2.0"
local	prefix		= pathJoin( basedir, name, version, mpi_version )
local	module_family	= "NAMD"

------------------------------------------------------------------------------

whatis( "Name: NAMD" )
whatis( "Version: " .. pathJoin( version, mpi_version ) )
whatis( "Description: Parallel molecular dynamics simulator" )
whatis( "URL: http://www.ks.uiuc.edu/Research/namd/" )

------------------------------------------------------------------------------

prepend_path( "PATH", prefix )

------------------------------------------------------------------------------

family( module_family )

-- End of file
