#!/bin/bash
latex_mainfile=$1
latexmk --pdf --pvc $latex_mainfile
