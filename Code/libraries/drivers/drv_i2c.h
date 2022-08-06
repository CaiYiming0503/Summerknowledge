/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 */

#ifndef __DRV_I2C__
#define __DRV_I2C__

#include <rtthread.h>
#include <rthw.h>
#include <rtdevice.h>

/* hpm32 config class */
struct hpm32_soft_i2c_config
{
    rt_uint8_t scl;
    rt_uint8_t sda;
    const char *bus_name;
};
/* hpm32 i2c dirver class */
struct hpm32_i2c
{
    struct rt_i2c_bit_ops ops;
    struct rt_i2c_bus_device i2c2_bus;
};

#ifdef BSP_USING_I2C0
#define I2C0_BUS_CONFIG                                  \
    {                                                    \
        .scl = BSP_I2C0_SCL_PIN,                         \
        .sda = BSP_I2C0_SDA_PIN,                         \
        .bus_name = "i2c0",                              \
    }
#endif

#ifdef BSP_USING_I2C1
#define I2C1_BUS_CONFIG                                  \
    {                                                    \
        .scl = BSP_I2C1_SCL_PIN,                         \
        .sda = BSP_I2C1_SDA_PIN,                         \
        .bus_name = "i2c1",                              \
    }
#endif

#ifdef BSP_USING_I2C3
#define I2C3_BUS_CONFIG                                  \
    {                                                    \
        .scl = BSP_I2C3_SCL_PIN,                         \
        .sda = BSP_I2C3_SDA_PIN,                         \
        .bus_name = "i2c3",                              \
    }
#endif

int rt_hw_i2c_init(void);

#endif
