#!/bin/bash -ue
cat chunk_aa | tr '[a-z]' '[A-Z]' | rev > 000.output.txt
