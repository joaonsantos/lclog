#include <stdio.h>

#ifndef __libc_lclog_h
#define __libc_lclog_h

struct lclog {
  char *prefix;
  FILE *out;
};
typedef struct lclog lclog;

lclog *lclog_new(char *prefix);

void lclog_free(lclog *log);

void lclog_log(lclog *log, char *fmt, ...);

#endif /* __libc_lclog_h */
