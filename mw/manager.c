/*************************************************************************
	> File Name: manager.c
	> Author: 
	> Mail: 
	> Created Time: Sun 11 Jun 2017 06:43:56 PM CST
 ************************************************************************/

#include<stdio.h>

#include "common.h"
#include "manager.h"


#define DBG(fmt, arg...) printf("[%s][%s][%d]" fmt "\r\n",\
                                __FILE__,__func__, __LINE__, ##arg)

int mw_init(void)
{
    DBG("test");
    return 0;
}

