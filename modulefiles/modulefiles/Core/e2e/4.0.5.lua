-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/e2e/4.0.5
-- Jonathan Senning
-- 2015-09-01
-- ===========================================================================

------------------------------------------------------------------------------

help( [[

]] )

------------------------------------------------------------------------------

local	basedir		= "/shared"
local	name		= "e2e"
local	version		= "4.0.5"
local	prefix		= pathJoin( basedir, name, version )
local	module_family	= "e2e"

------------------------------------------------------------------------------

whatis( "Name: e2e" )
whatis( "Version: " .. version )
whatis( "Description: End-to-end simulation software" )
whatis( "http://labcit.ligo.caltech.edu/~e2e/" )

------------------------------------------------------------------------------

setenv( "E2E_HOME", prefix )
setenv( "E2E_PATH", pathJoin( prefix, "lib" ) )
prepend_path( "PATH", pathJoin( prefix, "bin" ) )

------------------------------------------------------------------------------

family( module_family )

-- End of file
