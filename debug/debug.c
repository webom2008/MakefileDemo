/*************************************************************************
	> File Name: debug.c
	> Author: 
	> Mail: 
	> Created Time: Sun 11 Jun 2017 06:34:42 PM CST
 ************************************************************************/

#include <stdio.h>

#include "common.h"
#include "debug.h"

int debug_init(void)
{
#ifdef CFG_DEBUG_ON
    printf("\r\n>>%s ON", __func__);
#else
    printf("\r\n>>%s OFF", __func__);
#endif

    return 0;
}


