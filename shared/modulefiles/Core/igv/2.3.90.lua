-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/igv/2.3.90.lua
-- Jonathan Senning
-- 2017-02-07
-- ===========================================================================

help( [[

The Integrative Genomics Viewer (IGV) is a high-performance visualization
tool for interactive exploration of large, integrated genomic datasets.
It supports a wide variety of data types, including array-based and
next-generation sequence data, and genomic annotations.
]] )

------------------------------------------------------------------------------

local	basedir		= string.match( myFileName(), "/[^/]*" )
local	name		= "igv"
local	version		= "IGV_2.3.90"
local	prefix		= pathJoin( basedir, name, version )
local	module_family	= "IGV"

------------------------------------------------------------------------------

whatis( "Name: IGV" )
whatis( "Version: " .. pathJoin( version, mpi_version ) )
whatis( "Description: Integrative Genomics Viewer" )
whatis( "URL: http://software.broadinstitute.org/software/igv/" )

------------------------------------------------------------------------------

prepend_path( "PATH", pathJoin( prefix ) )

------------------------------------------------------------------------------

family( module_family )

-- End of file
