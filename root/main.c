#include <stdio.h>
#include "common.h"
#include "debug.h"
#include "driver.h"
#include "manager.h"


int main(void)
{
    debug_init();
    driver_init();
    mw_init();

    printf("\r\n>>%s exit", __func__);
    return 0;
}
