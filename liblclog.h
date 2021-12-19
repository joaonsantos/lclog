#include <stdio.h>

#ifndef __libc_cllog_h
#define __libc_cllog_h

typedef struct lclog {
  char *prefix;
  FILE *out;

} lclog;

lclog *lclog_new(char *prefix);
void lclog_log(lclog *log, char *fmt, ...);

#endif /* __libc_cllog_h */
