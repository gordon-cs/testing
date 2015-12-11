-- -*- lua -*-
-- ===========================================================================
-- modulefiles/Compiler/gcc/lapack/3.5.0
-- Jonathan Senning
-- 2015-12-08
-- ===========================================================================

help( [[

LAPACK provides routines for solving systems of simultaneous linear
equations, least-squares solutions of linear systems of equations,
eigenvalue problems, and singular value problems.  The associated
matrix factorizations (LU, Cholesky, QR, SVD, Schur, generalized
Schur) are also provided, as are related computations such as
reordering of the Schur factorizations and estimating condition
numbers.  Dense and banded matrices are handled, but not general sparse
matrices.  In all areas, similar functionality is provided for real and
complex matrices, in both single and double precision.
]] )

------------------------------------------------------------------------------

--if ( mode() == "load" ) then
--  if ( not ( isloaded( "refblas" ) or isloaded( "gotoblas2" ) ) ) then
--    LmodError( "Cannot load unless BLAS module is loaded" )
--  end
--end

------------------------------------------------------------------------------

local	name		= "lapack"
local	version		= "3.6.0"
local	prefix		= pathJoin( "/shared", name, version )
local	module_family	= "LAPACK"

------------------------------------------------------------------------------

whatis( "Name: LAPACK" )
whatis( "Version: " .. version )
whatis( "Description: Numerical linear algebra library" )
whatis( "URL: http://www.netlib.org/lapack" )

------------------------------------------------------------------------------

prepend_path( "CPATH",			pathJoin( prefix, "include" ) )
prepend_path( "LIBRARY_PATH",		pathJoin( prefix, "lib" ) )
if os.getenv( "MANPATH" ) == nil then
  prepend_path( "MANPATH", capture( "manpath" ) )
end
prepend_path( "MANPATH", pathJoin( prefix, "share/man" ) )

------------------------------------------------------------------------------

family( module_family )

-- End of file
