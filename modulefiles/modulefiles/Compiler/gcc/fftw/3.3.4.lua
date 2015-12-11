-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Compiler/gcc/fftw/3.3.4
-- Jonathan Senning
-- 2015-01-11
-- ===========================================================================

help( [[

FFTW is a C subroutine library for computing the discrete Fourier
transform (DFT) in one or more dimensions, of arbitrary input size,
and of both real and complex data (as well as of even/odd data,
i.e. the discrete cosine/sine transforms or DCT/DST).
]] )

------------------------------------------------------------------------------

local	basedir		= "/shared"
local	name		= "fftw"
local	version		= "3.3.4"
local	prefix		= pathJoin( basedir, name, version )
local	module_family	= "FFT"

------------------------------------------------------------------------------

whatis( "Name: FFTW" )
whatis( "Version: " .. version )
whatis( "Description: Fast Fourier Transform library" )
whatis( "URL: http://www.fftw.org" )

------------------------------------------------------------------------------

prepend_path( "PATH", pathJoin( prefix, "bin" ) )
prepend_path( "CPATH", pathJoin( prefix, "include" ) )
prepend_path( "LIBRARY_PATH", pathJoin( prefix, "lib" ) )
prepend_path( "MANPATH", pathJoin( prefix, "share/man" ) )

------------------------------------------------------------------------------

family( module_family )

-- End of file
