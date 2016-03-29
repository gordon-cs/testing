-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/cif2cell/1.2.7
-- Jonathan Senning
-- 2015-10-06
-- ===========================================================================

------------------------------------------------------------------------------

help( [[

A tool to generate the geometrical setup for various electronic 
structure codes from a CIF (Crystallographic Information 
Framework) file. The code will generate the crystal structure for 
the primitive cell or the conventional cell.
]] )

------------------------------------------------------------------------------

local	basedir		= "/shared"
local	name		= "cif2cell"
local	version		= "1.2.7"
local	prefix		= pathJoin( basedir, name, version )
local	module_family	= "CIF2CELL"

------------------------------------------------------------------------------

whatis( "Name: cif2cell" )
whatis( "Version: " .. version )
whatis( "Description: Generating geometries for electronic structure programs" )
whatis( "http://sourceforge.net/projects/cif2cell/" )

------------------------------------------------------------------------------

prepend_path( "PATH", pathJoin( prefix, "bin" ) )
prepend_path( "PYTHONPATH", pathJoin( prefix, "lib/python2.6/site-packages" ) )

------------------------------------------------------------------------------

--prepend_path( "MODULEPATH",
--    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
