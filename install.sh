#!/bin/bash
echo "export LATEX_STYLES=$PWD" >> ~/.bashrc
echo 'export TEXINPUTS=$LATEX_STYLES/styles//:$TEXINPUTS' >> ~/.bashrc
echo 'export BSTINPUTS=:$LATEX_STYLES/styles/common::' >> ~/.bashrc
echo 'export BIBINPUTS=.:$LATEX_STYLES/share::' >> ~/.bashrc
echo 'Paths updated. Source ~/.bashrc or open a new shell for them to take effect.'

