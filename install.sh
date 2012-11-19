#!/bin/bash
echo "export LATEX_STYLES=$PWD" >> ~/.bashrc
echo 'export TEXINPUTS=$LATEX_STYLES/styles//:$TEXINPUTS' >> ~/.bashrc
