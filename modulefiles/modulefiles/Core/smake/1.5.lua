-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/smake/1.5
-- Jonathan Senning
-- 2015-01-03
-- ===========================================================================

------------------------------------------------------------------------------

help( [[

Smake  (simple  make) is a utility for detecting processing directives
within files, expanding any contained macros, and executing the result-
ing  command. 
]] )

------------------------------------------------------------------------------

local	name		= "smake"
local	version		= "1.5"
local	prefix		= pathJoin( "/shared", name, version )
local	module_family	= "Smake"

------------------------------------------------------------------------------

whatis( "Name: smake" )
whatis( "Version: " .. version )
whatis( "Description: Simple make" )

------------------------------------------------------------------------------

prepend_path( "PATH",		pathJoin( prefix, "bin" ) )
prepend_path( "MANPATH",	pathJoin( prefix, "share/man" ) )

------------------------------------------------------------------------------

family( module_family )

-- End of file
