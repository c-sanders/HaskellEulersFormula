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
 -- Functions to import from the EulersFormula module.
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

        real = cos (float2Double theta)


eulersFormula_imag :: Float -> Double
eulersFormula_imag    theta =

    imag

    where

        imag = sin (float2Double theta)


eulersFormula :: Float -> Complex Double
eulersFormula    theta =

    real :+ imag

    where

        real = eulersFormula_real theta
        imag = eulersFormula_imag theta

