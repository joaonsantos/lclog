#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

#include <liblclog.h>

lclog* lclog_new(char *prefix) {
  lclog* log = malloc(sizeof(lclog));
  log->out = stdout;
  log->prefix = prefix;
  return log;
};

void lclog_log(lclog* log, char* fmt, ...) {
  // print prefix
  fprintf(log->out, "%s ", log->prefix);

  // print log message
  va_list ap;
  va_start(ap, fmt);
  vfprintf(log->out, fmt, ap);
  va_end(ap);

  // begin a new line
  fprintf(log->out, "\n");
};
