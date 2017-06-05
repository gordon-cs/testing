-- -*- lua -*-
-- ===========================================================================
-- modulefiles/MPI/openmpi-2/vasp/4.6
-- Jonathan Senning
-- 2016-10-06
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

local	basedir		= string.match( myFileName(), "/[^/]*" )
local	name		= "vasp"
local	version		= "4.6"
local	mpi_version	= "openmpi/2.0"
local	prefix		= pathJoin( basedir, name, version, mpi_version )
local	module_family	= "VASP"

------------------------------------------------------------------------------

whatis( "Name: VASP" )
whatis( "Version: " .. pathJoin( version, mpi_version ) )
whatis( "Description: The Vienna Ab initio Simulation Package" )
whatis( "URL: http://www.vasp.at" )

------------------------------------------------------------------------------

prepend_path( "PATH", pathJoin( prefix, "bin" ) )

------------------------------------------------------------------------------

family( module_family )

-- End of file
