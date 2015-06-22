#!/bin/sh
## skip.sh for skip in /home/pliso_c/Piscine/Synthese/automakefile
## 
## Made by christian pliso
## Login   <pliso_c@epitech.net>
## 
## Started on  Mon Jun 22 09:10:16 2015 christian pliso
## Last update Mon Jun 22 11:21:30 2015 christian pliso
##

awk '{print $3, $9}' | grep \ $1
