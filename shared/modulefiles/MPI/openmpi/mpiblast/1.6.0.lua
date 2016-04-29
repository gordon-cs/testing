-- -*- lua -*-
-- ===========================================================================
-- modulefiles/MPI/openmpi/mpiblast/1.6.0
-- Jonathan Senning
-- 2016-04-25
-- ===========================================================================

help( [[

Parallel (MPI-based) version of NCBI BLAST.

The Basic Local Alignment Search Tool (BLAST) finds regions ofi local
similarity between sequences. The program compares nucleotide or
protein sequences to sequence databases and calculates the statistical
significance of matches. BLAST can be used to infer functional and
evolutionary relationships between sequences as well as help identify
members of gene families.
]] )

------------------------------------------------------------------------------

local   basedir         = "/shared"
local	name		= "mpiblast"
local	version		= "1.6.0"
local	mpi_version	= "openmpi"
local	prefix		= pathJoin( basedir, name, version, mpi_version )
local	module_family	= "mpiBLAST"

------------------------------------------------------------------------------

whatis( "Name: mpiBLAST" )
whatis( "Version: " .. pathJoin( version, mpi_version ) )
whatis( "Description: Parallel version of NCBI BLAST" )
whatis( "URL: http://www.mpiblast.org" )

------------------------------------------------------------------------------

prepend_path( "PATH",			pathJoin( prefix, "bin" ) )
-- prepend_path( "CPATH",			pathJoin( prefix, "include" ) )
-- prepend_path( "LIBRARY_PATH",		pathJoin( prefix, "lib" ) )
-- prepend_path( "LD_LIBRARY_PATH",	pathJoin( prefix, "lib" ) )

------------------------------------------------------------------------------

-- prepend_path( "MODULEPATH",
--    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
