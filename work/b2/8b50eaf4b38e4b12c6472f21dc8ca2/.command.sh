#!/bin/bash -ue
cat chunk_ab | tr '[a-z]' '[A-Z]' | rev > 000.output.txt
cat 000.output.txt
