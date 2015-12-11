-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/python2/native
-- Jonathan Senning
-- 2015-12-07
-- ===========================================================================

------------------------------------------------------------------------------

help( [[

Module for system python version 2.x suite.
]] )

------------------------------------------------------------------------------

local	name		= "python2"
local	version		= "native"
local	module_family	= "Python"

------------------------------------------------------------------------------

whatis( "Native python environment" )
whatis( "Version: " .. version )
whatis( "Description: Python interpreter and libraries" )
whatis( "URL: http://www.python.org" )

------------------------------------------------------------------------------

prepend_path( "MODULEPATH",
    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
