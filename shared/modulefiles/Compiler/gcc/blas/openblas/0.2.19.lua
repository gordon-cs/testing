-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Compiler/gcc/blas/openblas/0.2.19
-- Jonathan Senning
-- 2016-10-06
-- ===========================================================================

help( [[

OpenBLAS is an optimized BLAS library based on GotoBLAS2 1.13 BSD version.
This implementation of the Basic Linear Algebra Subroutines supports
additional processor architectures and includes additional optimizations.
]] )

------------------------------------------------------------------------------

local	basedir		= string.match( myFileName(), "/[^/]*" )
local	name		= "openblas"
local	version		= "0.2.19"
local	prefix		= pathJoin( basedir, name, version )
local	module_family	= "BLAS"

------------------------------------------------------------------------------

whatis( "Name: OpenBLAS" )
whatis( "Version: " .. version )
whatis( "Description: Optimized Basic Linear Algebra Subroutines." )
whatis( "URL: https://www.openblas.net" )

------------------------------------------------------------------------------

prepend_path( "CPATH",			pathJoin( prefix, "include" ) )
prepend_path( "LIBRARY_PATH",		pathJoin( prefix, "lib" ) )
prepend_path( "LD_LIBRARY_PATH",	pathJoin( prefix, "lib" ) )

------------------------------------------------------------------------------

family( module_family )

-- End of file
