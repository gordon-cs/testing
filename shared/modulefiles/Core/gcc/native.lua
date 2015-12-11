-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/gcc/native
-- Jonathan Senning
-- 2014-01-02
-- ===========================================================================

------------------------------------------------------------------------------

help( [[

Dummy module for native system compiler suite.  This module should be
loaded to provide access to other libraries that can be linked with
the native compiler.
]] )

------------------------------------------------------------------------------

local	name		= "gcc"
local	version		= "native"
local	module_family	= "Compiler"

------------------------------------------------------------------------------

whatis( "Native compiler environment" )

------------------------------------------------------------------------------

prepend_path( "MODULEPATH",
    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
