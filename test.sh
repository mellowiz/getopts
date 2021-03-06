#!/usr/bin/env sh

# Usage as an individual function
usage() {
    echo "Usage: cmd [-h] [-t] [-f FILE] [-g FILE]"
}

while getopts ":htf:g:" opt; do
  case ${opt} in
    f ) # process option F
      echo "You've chosen:\tF"
      echo "OPTARG = "$OPTARG
      ;;
    g ) # process option G
      echo "You've chosen:\tG"
      echo "OPTARG = "$OPTARG
      ;;
    h ) # process option H
      usage
      exit 0
      ;;
    t ) # process option T
      echo "You've chosen:\tT"
      ;;
    \? )
      echo "Invalid option."
      usage
      exit 10
      ;;
    : )
      echo "Chosen option requires an argument"	
      exit 1
      ;;
  esac
done

# It's a good rule to manually decrease OPTIND after calling getopts
shift $((OPTIND -1))

# This if-loop is required to catch the "no argument" use case
if [ "$OPTIND" -lt 2 ]; then
    usage
    exit 1
  else
    echo "Done!!!" && echo
fi
