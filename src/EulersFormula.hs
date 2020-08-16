{-- ================================================================================================
 -- Module name : EulersFormula
 -- ------------------------------------------------------------------------------------------------
 --
 -- Filename : src/EulersFormula.hs
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

    real :+ imag

    where

        real = eulersFormula_real theta
        imag = eulersFormula_imag theta

