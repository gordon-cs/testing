-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/gnu/5.3.0
-- Jonathan Senning
-- 2016-02-24
-- ===========================================================================

------------------------------------------------------------------------------

help( [[

This module sets up the environment for the GNU compiler suite,
including gcc, g++, and gfortran.  It modifies CC, GCC, CXX, FC, F77,
PATH, MANPATH, and LD_LIBRARY_PATH.
]] )

------------------------------------------------------------------------------

local	basedir		= "/shared"
local	name		= "gcc"
local	version		= "5.3.0"
local	prefix		= pathJoin( basedir, name, version )
local	libdir		= "lib64"
local	module_family	= "Compiler"

------------------------------------------------------------------------------

whatis( "Name: GCC Compilers" )
whatis( "Version: " .. version )
whatis( "Description: GCC compiler family for x86_64" )
whatis( "URL: http://gcc.gnu.org" )

------------------------------------------------------------------------------

setenv( "CC", pathJoin( prefix, "bin/gcc" ) )
setenv( "GCC", pathJoin( prefix, "bin/gcc" ) )
setenv( "CXX", pathJoin( prefix, "bin/g++" ) )
setenv( "FC", pathJoin( prefix, "bin/gfortran" ) )
setenv( "F77", pathJoin( prefix, "bin/gfortran" ) )
--setenv( "F90", pathJoin( prefix, "bin/gfortran" ) )
--prepend_path( "PATH", pathJoin( prefix, "include" ) )
prepend_path( "PATH", pathJoin( prefix, "bin" ) )
--prepend_path( "LIBRARY_PATH", pathJoin( prefix, libdir ) )
--prepend_path( "CPATH", pathJoin( prefix, "include" ) )
prepend_path( "LD_LIBRARY_PATH", pathJoin( prefix, libdir ) )
if os.getenv( "MANPATH" ) == nil then
  prepend_path( "MANPATH", capture( "manpath" ) )
end
prepend_path( "MANPATH", pathJoin( prefix, "share/man" ) )

------------------------------------------------------------------------------

prepend_path( "MODULEPATH",
    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
