{-- ================================================================================================
 -- Module name : EulersFormula
 -- ------------------------------------------------------------------------------------------------
 --
 -- Filename : src/EulersFormula.hs
 --
 -- ------------------------------------------------------------------------------------------------
 --
 -- This file implements a Haskell module which is called;
 --
 --   EulersFormula
 --
 -- The GHC (Glasgow Haskell Compiler) can be used to compile this file with a command which is
 -- similar to the following;
 --
 --   > ghc -i ./src/testEulersFormulaModule.hs
 --
 -- Note that this command uses the -i option to specify the name of the file which is to be
 -- compiled.
 --
 -- ================================================================================================
 --}

module
EulersFormula
(
 -- Functions that should be exported from this module.
 eulersFormula_real,
 eulersFormula_imag,
 eulersFormula
)
where


import Data.Complex
-- Data types : Complex
-- Functions  : -
import GHC.Float
-- Data types : -
-- Functions  : float2Double


eulersFormula_real :: Float -> Double
eulersFormula_real    theta =

    real

    where

        -- Parentheses need to surround the following invocation of float2Double, otherwise the
        -- compiler will complain about it.

        real = cos (float2Double theta)


eulersFormula_imag :: Float -> Double
eulersFormula_imag    theta =

    imag

    where

        -- Parentheses need to surround the following invocation of float2Double, otherwise the
        -- compiler will complain about it.

        imag = sin (float2Double theta)


-- Note that the type signature for the output of this function is Complex Double, and not just
-- Complex.

eulersFormula :: Float -> Complex Double
eulersFormula    theta =

    -- Construct the output value for this function.

    real :+ imag

    where

        real = eulersFormula_real theta
        imag = eulersFormula_imag theta

