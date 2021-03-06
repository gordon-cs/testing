-- -*- lua -*-
-- ===========================================================================
-- modulefiles/MPI/openmpi/mpiblast/1.6.0
-- Jonathan Senning
-- 2016-04-25
-- ===========================================================================

help( [[

Parallel (MPI-based) version of NCBI BLAST.

The Basic Local Alignment Search Tool (BLAST) finds regions of local
similarity between sequences. The program compares nucleotide or
protein sequences to sequence databases and calculates the statistical
significance of matches. BLAST can be used to infer functional and
evolutionary relationships between sequences as well as help identify
members of gene families.
]] )

------------------------------------------------------------------------------

local   basedir         = string.match( myFileName(), "/[^/]*" )
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

prepend_path( "PATH", pathJoin( prefix, "bin" ) )

------------------------------------------------------------------------------

family( module_family )

-- End of file
