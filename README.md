# lclog

This implements a very rudimentary C logger library for educational purposes.

`lclog` stands for (l)ightweight (C) (log)ger.

## How to use
On your C program include the library header file:
```c
#include <lclog.h>

int main() {
  // create a logger with your desired prefix
  lclog *logger = lclog_new("[INFO]");

  // ... do more stuff

  // use the logger
  lclog_log(logger, "application startup complete");

  // ... do more stuff

  // free the memory
  lclog_free(logger);
}
```

## Installing
Install the library and headers to standard linux locations:

```sh
$ make && make install
```

## Testing
To run tests:

```sh
$ make test
```

No output means all good!
