-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/miniconda3.lua
-- Jonathan Senning
-- 2017-01-24
-- ===========================================================================

------------------------------------------------------------------------------

help( [[

Miniconda3 is a minimum Anaconda installation using Python 3.5.
]] )

------------------------------------------------------------------------------

local	name		= "miniconda3"
local	prefix		= pathJoin( "/shared", name )
local	module_family	= "Miniconda"

------------------------------------------------------------------------------

whatis( "Miniconda3" )
whatis( "Description: Minimum Anaconda using Python 3" )
whatis( "URL: http://conda.pydata.org/miniconda.html" )

------------------------------------------------------------------------------

prepend_path( "PATH", pathJoin( prefix, "bin" ) )

prepend_path( "MODULEPATH",
    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
