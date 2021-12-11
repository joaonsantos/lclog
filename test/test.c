#include <stdio.h>

#include <liblclog.h>

int main() {
  lclog *logger = lclog_new();
  lclog_log(logger, "Hello world!");
  return 0;
}
