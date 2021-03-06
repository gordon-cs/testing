-- -*- lua -*-
-- ===========================================================================
-- modulefiles/MPI/mpich/hdf5/1.8.16
-- Jonathan Senning
-- 2015-12-06
-- ===========================================================================

help( [[

HDF5 is a data model, library, and file format for storing and
managing data. It supports an unlimited variety of datatypes, and
is designed for flexible and efficient I/O and for high volume
and complex data. HDF5 is portable and is extensible, allowing
applications to evolve in their use of HDF5. The HDF5 Technology
suite includes tools and applications for managing, manipulating,
viewing, and analyzing data in the HDF5 format.
]] )

------------------------------------------------------------------------------

local   basedir         = "/shared"
local	name		= "hdf5"
local	version		= "1.8.16"
local	mpi_version	= "mpich"
local	prefix		= pathJoin( basedir, name, version, mpi_version )
local	module_family	= "HDF5"

------------------------------------------------------------------------------

whatis( "Name: HDF5" )
whatis( "Version: " .. pathJoin( version, mpi_version ) )
whatis( "Description: Hierarchical Data Format library" )
whatis( "URL: http://www.hdfgroup.org" )

------------------------------------------------------------------------------

prepend_path( "PATH",			pathJoin( prefix, "bin" ) )
prepend_path( "CPATH",			pathJoin( prefix, "include" ) )
prepend_path( "LIBRARY_PATH",		pathJoin( prefix, "lib" ) )
prepend_path( "LD_LIBRARY_PATH",	pathJoin( prefix, "lib" ) )

------------------------------------------------------------------------------

-- prepend_path( "MODULEPATH",
--    pathJoin( os.getenv( "MODULEPATH_ROOT" ), module_family, name ) )

family( module_family )

-- End of file
