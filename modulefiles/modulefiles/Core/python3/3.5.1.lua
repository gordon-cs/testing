-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/python3/3.5.1
-- Jonathan Senning
-- 2015-12-07
-- ===========================================================================

------------------------------------------------------------------------------

help( [[

Module for locally installed python version 3.x suite.
]] )

------------------------------------------------------------------------------

local	name		= "python3"
local	version		= "3.5.1"
local	shortversion	= string.sub(version,string.find(version,"%d+.%d+"))
local	prefix		= pathJoin( "/shared", name, version )
local	module_family	= "Python"

------------------------------------------------------------------------------

whatis( "Python Version 3" )
whatis( "Version: " .. version )
whatis( "Description: Python interpreter and libraries" )
whatis( "URL: http://www.python.org" )

------------------------------------------------------------------------------

-- setenv( "PYTHONPATH", pathJoin( prefix, "lib/python" .. shortversion ) )
-- setenv( "PYTHONHOME", prefix )

prepend_path( "PATH", pathJoin( prefix, "bin" ) )

prepend_path( "MODULEPATH",
    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
