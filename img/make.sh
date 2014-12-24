#! /bin/bash

BASE='threeStates' ;

gnuplot < "${threeStates}.plt" > "${threeStates}.eps" ;
epstopdf "${threeStates}.eps" ;
epstopng "${threeStates}.eps" ;
