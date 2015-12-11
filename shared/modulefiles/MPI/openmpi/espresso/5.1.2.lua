-- -*- lua -*-
-- ===========================================================================
-- modulefiles/MPI/openmpi/espresso/5.1.2
-- Jonathan Senning
-- 2015-03-27
-- ===========================================================================

help( [[

Quantum ESPRESSO is an integrated suite of Open-Source computer codes
for electronic-structure calculations and materials modeling at the
nanoscale. It is based on density-functional theory, plane waves, and
pseudopotentials.

This module sets up the environment for Quantum ESPRESSO using MPICH.
]] )

------------------------------------------------------------------------------

local   basedir		= "/shared"
local	name		= "espresso"
local	version		= "5.1.2"
local	mpi_version	= "openmpi"
local	prefix		= pathJoin( basedir, name, version, mpi_version )
local	gui_name	= "PWgui-5.1.2"
local	gui_prefix	= pathJoin( basedir, name, version, gui_name )
local	module_family	= "ESPRESSO"

------------------------------------------------------------------------------

whatis( "Name: Quantum ESPRESSO" )
whatis( "Version: " .. pathJoin( version, mpi_version ) )
whatis( "Description: electronic-structure calculation and materials modeling" )
whatis( "URL: http://www.quantum-espresso.org" )

------------------------------------------------------------------------------

prepend_path( "PATH", prefix )
prepend_path( "PATH", gui_prefix )
setenv( "PWGUI", gui_prefix )

------------------------------------------------------------------------------

-- prepend_path( "MODULEPATH",
--    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
