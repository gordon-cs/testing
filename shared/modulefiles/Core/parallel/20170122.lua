-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/parallel/20170122
-- Jonathan Senning
-- 2017-02-21
-- ===========================================================================

help( [[

GNU parallel is a shell tool for executing jobs in parallel using one or
more computers. A job can be a single command or a small script that has
to be run for each of the lines in the input. The typical input is a list
of files, a list of hosts, a list of users, a list of URLs, or a list of
tables. A job can also be a command that reads from a pipe. GNU parallel
can then split the input and pipe it into commands in parallel.
]] )

------------------------------------------------------------------------------

local	basedir		= string.match( myFileName(), "/[^/]*" )
local	name		= "parallel"
local	version		= "20170122"
local	prefix		= pathJoin( basedir, name, version )
local	module_family	= "PARALLEL"

------------------------------------------------------------------------------

whatis( "Name: GNU parallel" )
whatis( "Version: " .. version )
whatis( "Description: Executes jobs in parallel using one or more computers." )
whatis( "URL:https://www.gnu.org/software/parallel" )

------------------------------------------------------------------------------

prepend_path( "PATH",		pathJoin( prefix, "bin" ) )
prepend_path( "MANPATH",	pathJoin( prefix, "share/man" ) )

------------------------------------------------------------------------------

family( module_family )

-- End of file
