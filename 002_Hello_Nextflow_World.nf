#!/usr/bin/env nextflow

params.str = 'Holla world!'

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
  file 'chunk2_*' into letters2

  script:
  """
  cat $x | tr '[a-z]' '[A-Z]' > chunk2_
  """

}

process Reverse {
  input:
  file y from letters2.flatten()

  output:
stdout result

  script:
  """
  cat $y | rev >> /Users/homefolder/Documents/GitHub/NEXTFLOW_Training/000.output.txt

  """

}

result.view { it.trim() }
