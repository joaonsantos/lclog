#include <stdio.h>

#include <lclog.h>

int main() {
  lclog *logger = lclog_new("[LOG]");
  lclog_log(logger, "Hello world!");
  lclog_free(logger);
  return 0;
}
