#!/usr/bin/env nextflow

process to_uppercase {
  input: 
    val x

  output:
    path 'myoutput'

  script:
    """
    #!python3
    x="$x"
    with open(f"myoutput", "w") as f:
      f.write(x.upper())

    """
}

workflow {
    to_uppercase('hello world!')

}
