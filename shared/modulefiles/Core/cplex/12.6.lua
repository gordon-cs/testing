-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/cplex/12.6
-- Jonathan Senning
-- 2014-01-28
-- ===========================================================================

help( [[

This module sets up the environment for the CPLEX Optimization Server.
It modifies PATH, CPATH, and LIBRARY_PATH.
]] )

------------------------------------------------------------------------------

local	name		= "cplex"
local	version		= "12.6"
local	prefix		= pathJoin(
				"/shared/ibm/ILOG/CPLEX_Enterprise_Server" ..
				version:gsub( "[.]", "" ),
				"CPLEX_Studio" )
local	sys		= "x86-64_linux"
local	module_family	= "CPLEX"

------------------------------------------------------------------------------

whatis( "Name: CPLEX" )
whatis( "Version: " .. version )
whatis( "Description: CPLEX Optimization Server" )
whatis( "URL: http://www-01.ibm.com/software/commerce/optimization/cplex-optimizer/" )

------------------------------------------------------------------------------

prepend_path( "PATH",		pathJoin( prefix, "cplex/bin", sys ) )
prepend_path( "CPATH",		pathJoin( prefix, "cplex/include"  ) )
prepend_path( "CPATH",		pathJoin( prefix, "concert/include" ) )
prepend_path( "LIBRARY_PATH",	pathJoin( prefix, "cplex/lib", sys,
	      				  "static_pic" ) )
prepend_path( "LIBRARY_PATH",	pathJoin( prefix, "concert/lib", sys,
	      				  "static_pic" ) )

------------------------------------------------------------------------------

family( module_family )

-- End of file
