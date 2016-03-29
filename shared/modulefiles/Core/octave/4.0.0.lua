-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/octave/4.0.0
-- Jonathan Senning
-- 2015-12-11
-- ===========================================================================

------------------------------------------------------------------------------

help( [[

GNU Octave is a high-level interpreted language, primarily intended for numerical computations. It provides capabilities for the numerical solution of linear and nonlinear problems, and for performing other numerical experiments. It also provides extensive graphics capabilities for data visualization and manipulation. Octave is normally used through its interactive command line interface, but it can also be used to write non-interactive programs. The Octave language is quite similar to Matlab so that most programs are easily portable.
]] )

------------------------------------------------------------------------------

local	name		= "octave"
local	version		= "4.0.0"
local	prefix		= pathJoin( "/shared", name, version )
local	module_family	= "Octave"

------------------------------------------------------------------------------

whatis( "Octave" )
whatis( "Version: " .. version )
whatis( "Description: Octave interpreted Language" )
whatis( "URL: http://www.gnu.org/software/octave" )

------------------------------------------------------------------------------

prepend_path( "PATH", pathJoin( prefix, "bin" ) )
prepend_path( "MANPATH", pathJoin( prefix, "share/man" ) )

prepend_path( "MODULEPATH",
    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
