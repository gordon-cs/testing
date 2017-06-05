-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/miniconda2.lua
-- Jonathan Senning
-- 2017-02-23
-- ===========================================================================

------------------------------------------------------------------------------

help( [[

Miniconda2 is a minimum Anaconda installation using Python 2.7.
]] )

------------------------------------------------------------------------------

local	name		= "miniconda2"
local	prefix		= pathJoin( "/shared", name )
local	module_family	= "Miniconda"

------------------------------------------------------------------------------

whatis( "Miniconda2" )
whatis( "Description: Minimum Anaconda using Python 2.7" )
whatis( "URL: http://conda.pydata.org/miniconda.html" )

------------------------------------------------------------------------------

prepend_path( "PATH", pathJoin( prefix, "bin" ) )

prepend_path( "MODULEPATH",
    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
