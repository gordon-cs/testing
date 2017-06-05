-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/freebayes/1.1.0.lua
-- Jonathan Senning
-- 2017-02-22
-- ===========================================================================

help( [[

FreeBayes is a Bayesian genetic variant detector designed to find
small polymorphisms, specifically SNPs (single-nucleotide polymorphisms),
indels (insertions and deletions), MNPs (multi-nucleotide polymorphisms),
and complex events (composite insertion and substitution events) smaller
than the length of a short-read sequencing alignment.
]] )

------------------------------------------------------------------------------

local	basedir		= string.match( myFileName(), "/[^/]*" )
local	name		= "freebayes"
local	version		= "1.1.0"
local	prefix		= pathJoin( basedir, name, version )
local	module_family	= "FreeBayes"

------------------------------------------------------------------------------

whatis( "Name: FreeBayes" )
whatis( "Version: " .. pathJoin( version, mpi_version ) )
whatis( "Description: Bayesian genetic variant detector" )
whatis( "URL: https://github.com/ekg/freebayes" )

------------------------------------------------------------------------------

prepend_path( "PATH",			pathJoin( prefix, "bin" ) )
prepend_path( "LD_LIBRARY_PATH",	pathJoin( prefix, "lib" ) )

------------------------------------------------------------------------------

family( module_family )

-- End of file
