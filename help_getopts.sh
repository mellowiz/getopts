#!/usr/bin/env bash

#MY_OWN_SET=(one two three)

#while getopts ":a:Bc" opt "${MY_OWN_SET[@]}"; do

show_help() {
cat << EOF
  Usage: ${0##*/} [-hv] [-f OUTFILE] [FILE]...
  Do stuff with FILE and write the result to standard output. With no FILE
  or when FILE is -, read standard input.
 
    -h          display this help and exit
    -f OUTFILE  write the result to OUTFILE instead of standard output.
    -v          verbose mode. Can be used multiple times for increased
                verbosity.
EOF
}

while getopts ":a:Bc" opt; do
  case $opt in
    a)
      echo "-a was triggered, parameter: $OPTARG" >&2
      ;;
    B)
      echo "-B was triggered" >&2
      ;;
    c)
      echo "-c was triggered" >&2
      ;;
    h)
      show_help
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      show_help
      ;;
    :)
      echo "Option -$OPTARG requires an argument" >&2
      exit 1
      ;;
  esac
done
