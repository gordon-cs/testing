-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Compiler/gcc/vasp/4.6
-- Jonathan Senning
-- 2015-09-22
-- ===========================================================================

help( [[

The Vienna Ab initio Simulation Package (VASP) is a computer program for
atomic scale materials modelling, e.g. electronic structure calculations
and quantum-mechanical molecular dynamics, from first principles.

VASP computes an approximate solution to the many-body Schrodinger equation,
either within density functional theory (DFT), solving the Kohn-Sham
equations, or within the Hartree-Fock (HF) approximation, solving the
Roothaan equations. Hybrid functionals that mix the Hartree-Fock approach
with density functional theory are implemented as well. Furthermore,
Green's functions methods (GW quasiparticles, and ACFDT-RPA) and
many-body perturbation theory (2nd-order Moller-Plesset) are available
in VASP.
]] )

------------------------------------------------------------------------------

local   basedir         = "/shared"
local	name		= "vasp"
local	version		= "4.6"
local	mpi_version	= "sequential"
local	prefix		= pathJoin( basedir, name, version, mpi_version )
local	module_family	= "VASP"

------------------------------------------------------------------------------

whatis( "Name: VASP" )
whatis( "Version: " .. pathJoin( version, mpi_version ) )
whatis( "Description: The Vienna Ab initio Simulation Package" )
whatis( "URL: http://www.vasp.at" )

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
