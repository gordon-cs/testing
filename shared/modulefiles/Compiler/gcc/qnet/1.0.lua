-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Compiler/gcc/qnet/1.0
-- Jonathan Senning
-- 2017-03-08
-- ===========================================================================

help( [[

Queueing network analysis package
]] )

------------------------------------------------------------------------------

local	basedir		= string.match( myFileName(), "/[^/]*" )
local	name		= "qnet"
local	version		= "1.0"
local	prefix		= pathJoin( basedir, name, version )
local	module_family	= "QNet"

------------------------------------------------------------------------------

whatis( "Name: QNet" )
whatis( "Version: " .. version )
whatis( "Description: Queueing network analysis package" )
whatis( "URL: http://www.math-cs.gordon.edu/~senning/qnetdp" )

------------------------------------------------------------------------------

prepend_path( "PATH",			pathJoin( prefix, "bin" ) )
prepend_path( "CPATH",			pathJoin( prefix, "include" ) )
prepend_path( "LIBRARY_PATH",		pathJoin( prefix, "lib" ) )
prepend_path( "LD_LIBRARY_PATH",	pathJoin( prefix, "lib" ) )
prepend_path( "MANPATH",		pathJoin( prefix, "share/man" ) )

------------------------------------------------------------------------------

-- prepend_path( "MODULEPATH",
--    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
