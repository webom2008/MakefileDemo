/*************************************************************************
	> File Name: manager.c
	> Author: 
	> Mail: 
	> Created Time: Sun 11 Jun 2017 06:43:56 PM CST
 ************************************************************************/

#include<stdio.h>

#include "common.h"
#include "manager.h"


#define DBG(fmt, arg...) printf("[%s] " fmt "\n",__func__, ##arg)
//#define (fmt, arg...) printf(__FILE__ __LINE__ fmt, ##arg)
//#define DBG(args...) printf(__FILE__ __LINE__ args)

int mw_init(void)
{
    DBG("\r\n%s", __func__);
    return 0;
}

