#include <stdarg.h>
#include <stdio.h>

int arr[1005];
int idx;

void test(const char *fmt, ...) {
    va_list vl;
    va_start(vl,fmt);
    arr[idx++] = va_arg(vl,int); // get the first va_arg and store to arr
    va_end(vl);
}

void show() {
    for (int i=0;i<idx;i++) printf("arr[%d] = %d\n",i,arr[i]);
}