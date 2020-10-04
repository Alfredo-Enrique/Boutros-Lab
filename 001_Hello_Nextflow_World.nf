#!/usr/bin/env nextflow

params.str = 'Hello world!'

process splitLetters {

  output:
  file 'chunk_*' into letters

  script:
  """
  printf '${params.str}' | split -b 6 - chunk_
  """
}

process convertToUpper {
  input:
  file x from letters.flatten()

  output:
stdout result

  script:
  """
  cat $x | tr '[a-z]' '[A-Z]' | rev > /Users/homefolder/Documents/GitHub/NEXTFLOW_Training/000.output.txt

  """

}

result.view { it.trim() }
