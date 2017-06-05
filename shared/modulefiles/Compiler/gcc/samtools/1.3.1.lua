-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Compiler/gcc/samtools/1.3.1
-- Jonathan Senning
-- 2017-01-24
-- ===========================================================================

help( [[

Samtools is a suite of programs for interacting with high-throughput
sequencing data.
]] )

------------------------------------------------------------------------------

local   basedir         = string.match( myFileName(), "/[^/]*" )
local	name		= "samtools"
local	version		= "1.3.1"
local	prefix		= pathJoin( basedir, name, version )
local	module_family	= "SAMtools"

------------------------------------------------------------------------------

whatis( "Name: SAMtools" )
whatis( "Version: " .. version )
whatis( "Description: Programs for interacting with high-throughput sequencing data" )
whatis( "URL: http://www.htslib.org/" )

------------------------------------------------------------------------------

prepend_path( "PATH",			pathJoin( prefix, "bin" ) )
if os.getenv( "MANPATH" ) == nil then
  prepend_path( "MANPATH", capture( "manpath" ) )
end
prepend_path( "MANPATH", pathJoin( prefix, "share/man" ) )

------------------------------------------------------------------------------

-- prepend_path( "MODULEPATH",
--    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
