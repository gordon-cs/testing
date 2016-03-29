-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Compiler/gcc/valgrind/3.11.0.lua
-- Jonathan Senning
-- 2015-12-30
-- ===========================================================================

help( [[

Valgrind is an instrumentation framework for building dynamic analysis
tools.  It comes with a set of tools each of which performs some kind
of debugging, profiling, or similar task that helps you improve your
programs. Valgrind's architecture is modular, so new tools can be
created easily and without disturbing the existing structure.
]] )

------------------------------------------------------------------------------

local	basedir		= "/shared"
local	name		= "valgrind"
local	version		= "3.11.0"
local	prefix		= pathJoin( basedir, name, version )
local	module_family	= "VALGRIND"

------------------------------------------------------------------------------

whatis( "Name: valgrind" )
whatis( "Version: " .. version )
whatis( "Description: Tool for finding memory management bugs in programs" )
whatis( "URL: http://valgrind.org" )

------------------------------------------------------------------------------

prepend_path( "PATH", pathJoin( prefix, "bin" ) )
prepend_path( "CPATH", pathJoin( prefix, "include" ) )
prepend_path( "LIBRARY_PATH", pathJoin( prefix, "lib" ) )
prepend_path( "LD_LIBRARY_PATH", pathJoin( prefix, "lib" ) )

------------------------------------------------------------------------------

prepend_path( "MODULEPATH",
    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
