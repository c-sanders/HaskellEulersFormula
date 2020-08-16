{-- ================================================================================================
 --
 -- Filename : testEulersFormulaModule.hs
 --
 -- ------------------------------------------------------------------------------------------------
 --
 -- The GHC (Glasgow Haskell Compiler) can be used to compile this file using the following command;
 --
 --   > ghc --make ./testEulersFormulaModule.hs
 --
 -- Note that this command uses the --make option rather than the -i option. This way, the compiler
 -- will automatically link in any modules that it requires.
 -- ================================================================================================
 --}

import EulersFormula


{---------------------------------------------------------------------------------------------------
 - Function : main
 - ===============
 -
 - The do keyword is used to combine a number of IO actions together.
 --------------------------------------------------------------------------------------------------}

nameFunction :: String
nameFunction =  "main : "

theta_a :: Float
theta_a =  0.5

theta_b :: Float
theta_b =  1.0

main = do

    putStrLn(nameFunction ++ "Enter")

    let

        result_a = eulersFormula theta_a
        result_b = eulersFormula theta_b

    putStrLn("Result of Euler's formula when theta = " ++ show theta_a)
    putStrLn("")
    putStrLn("  " ++ show result_a)
    putStrLn("")

    putStrLn("Result of Euler's formula when theta = " ++ show theta_b)
    putStrLn("")
    putStrLn("  " ++ show result_b)
    putStrLn("")

    putStrLn(nameFunction ++ "Exit")

