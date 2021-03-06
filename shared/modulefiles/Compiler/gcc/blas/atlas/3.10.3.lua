-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Compiler/gcc/atlas/3.10.3
-- Jonathan Senning
-- 2016-10-06
-- ===========================================================================

help( [[

The ATLAS (Automatically Tuned Linear Algebra Software) project is an
ongoing research effort focusing on applying empirical techniques in
order to provide portable performance.
]] )

------------------------------------------------------------------------------

local	basedir		= string.match( myFileName(), "/[^/]*" )
local	name		= "atlas"
local	version		= "3.10.3"
local	prefix		= pathJoin( basedir, name, version )
local	module_family	= "BLAS"

------------------------------------------------------------------------------

whatis( "Name: ATLAS" )
whatis( "Version: " .. version )
whatis( "Description: Automatically Tuned Linear Algebra Software" )
whatis( "URL: http://math-atlas.sourceforge.net" )

------------------------------------------------------------------------------

prepend_path( "CPATH",			pathJoin( prefix, "include" ) )
prepend_path( "LIBRARY_PATH",		pathJoin( prefix, "lib" ) )
prepend_path( "LD_LIBRARY_PATH",	pathJoin( prefix, "lib" ) )

------------------------------------------------------------------------------

family( module_family )

-- End of file
