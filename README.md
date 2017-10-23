### No arguments
```
$ ./test.sh
Usage: cmd [-h] [-t] [-f FILE] [-g FILE]
```

### Help
```
$ ./test.sh -h
Usage: cmd [-h] [-t] [-f FILE] [-g FILE]
```

### Valid option
```
$ ./test.sh -t
You've chosen:  T
Done!!!
```

### Option with mandatory argument
```
$ ./test.sh -f
Chosen option requires an argument

$ ./test.sh -f FILE
You've chosen:  F
OPTARG = FILE
Done!!!
```

### Option with mandatory argument
```
$ ./test.sh -g
Chosen option requires an argument

$ ./test.sh -g FILE
You've chosen:  G
OPTARG = FILE
Done!!!
```
