-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/git/2.7.0
-- Jonathan Senning
-- 2016-01-22
-- ===========================================================================

------------------------------------------------------------------------------

help( [[

Git is a fast, scalable, distributed revision control system with an
unusually rich command set that provides both high-level operations
and full access to internals.
]] )

------------------------------------------------------------------------------

local	name		= "git"
local	version		= "2.7.0"
local	prefix		= pathJoin( "/shared", name, version )
local	module_family	= "GIT"

------------------------------------------------------------------------------

whatis( "Git" )
whatis( "Version: " .. version )
whatis( "Description: Fast Version Control System" )
whatis( "URL: http://git-scm.com" )

------------------------------------------------------------------------------

prepend_path( "PATH", pathJoin( prefix, "bin" ) )
prepend_path( "MANPATH", pathJoin( prefix, "share/man" ) )

prepend_path( "MODULEPATH",
    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
