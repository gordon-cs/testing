-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Core/hwloc/1.11.0
-- Jonathan Senning
-- 2015-08-05
-- ===========================================================================

------------------------------------------------------------------------------

help( [[

The Portable Hardware Locality (hwloc) software package provides
a portable abstraction (across OS, versions, architectures, ...)
of the hierarchical topology of modern architectures, including
NUMA memory nodes, sockets, shared caches, cores and simultaneous
multithreading. It also gathers various system attributes such as
cache and memory information as well as the locality of I/O devices
such as network interfaces, InfiniBand HCAs or GPUs. It primarily
aims at helping applications with gathering information about
modern computing hardware so as to exploit it accordingly and
efficiently.
]] )

------------------------------------------------------------------------------

local	basedir		= "/shared"
local	name		= "hwloc"
local	version		= "1.11.0"
local	prefix		= pathJoin( basedir, name, version )
local	module_family	= "HWLOC"

------------------------------------------------------------------------------

whatis( "Name: hwloc" )
whatis( "Version: " .. version )
whatis( "Description: Access hardware locality information" )
whatis( "http://www.open-mpi.org/projects/hwloc/" )

------------------------------------------------------------------------------

prepend_path( "PATH", pathJoin( prefix, "bin" ) )
prepend_path( "CPATH", pathJoin( prefix, "include" ) )
prepend_path( "LD_LIBRARY_PATH", pathJoin( prefix, "lib" ) )
prepend_path( "MANPATH", pathJoin( prefix, "share/man" ) )

------------------------------------------------------------------------------

--prepend_path( "MODULEPATH",
--    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
