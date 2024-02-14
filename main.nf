#!/usr/bin/env nextflow

process to_uppercase_bash {
  input: 
    val x

  script:
    """
    echo $x | tr '[a-z]' '[A-Z]' > myoutput

    """
}

process to_uppercase_python {
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
    to_uppercase_bash('hello world!')

}
