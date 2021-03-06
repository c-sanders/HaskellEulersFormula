Haskell module which implements Euler's Formula.
================================================

Description.
------------

This package implements a Haskell module which in turn implements Eulers's formula.


Source code content.
--------------------

The file which implements this module is a Haskell source code (.hs) file which is called;

>  ./src/EulersFormula.hs

In addition to this file, this package also implements another Haskell source code file which is
called;

>  ./src/testEulersFormula.hs

This file contains Haskell source code which is used to test the module.


Compiling the source code.
--------------------------

This following sections assume that the Glasgow Haskell Compiler (GHC) will be used to compile and
link any Haskell source code.

Compiling the module.
---------------------

To compile just the source code which implements the Haskell module, invoke the following command
from the command line;

>  ghc -i ./src/EulersFormula.hs

Compiling the test program.
---------------------------

To compile the test program which can be used to test the module, invoke the following command from
the command line;

> ghc --make ./src/testEulersFormulaModule.hs
