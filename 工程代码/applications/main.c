/*
 * Copyright (c) 2021 hpmicro
 *
 * Change Logs:
 * Date         Author          Notes
 * 2021-08-13   Fan YANG        first version
 *
 */
//#ifdef FINSH_USING_MSH
#include <rtdbg.h>
#include <finsh.h>
#include <rtdbg.h>
#include <rtthread.h>
#include <rtdevice.h>
#include "rtt_board.h"
#include <sys/time.h>
#include "sensor_asair_aht10.h"
#include <stdio.h>
#include <rthw.h>
#include <u8g2_port.h>
#include "stdlib.h"
#include "stdio.h"
#include <string.h>
#include <stdint.h>
#include <onenet.h>
#define DBG_ENABLE
#define DBG_COLOR
#define DBG_SECTION_NAME    "onenet.sample"
#if ONENET_DEBUG
#define DBG_LEVEL           DBG_LOG
#else
#define DBG_LEVEL           DBG_INFO
#endif /* ONENET_DEBUG */


#define HUMI_DEVICE_NAME    "humi_aht10"//定义湿度设备的名称
#define TEMP_DEVICE_NAME    "temp_aht10"//定义温度设备的名称

#define AHT10_I2C_BUS  "i2c3"               //AHT10使用的是软件模拟I2C3
#define OLED_I2C_PIN_SCL                    115//OLED使用的是软件模拟I2C0
#define OLED_I2C_PIN_SDA                    116


char a[12]="strtemp";//定义字符串用于存储oled显示模块通过sprintf转出来的字符串
char b[12]="strhumi";

static rt_device_t _humi_dev = RT_NULL;
static rt_device_t _temp_dev = RT_NULL;
static rt_device_t _oled_dev = RT_NULL;

/*定义两个全局变量*/
rt_int32_t aht10_temp;
rt_int32_t aht10_humi;

static rt_thread_t oled_thread = RT_NULL;
static rt_thread_t temp_humi_thread = RT_NULL;
static rt_thread_t onenet_thread = RT_NULL;

/*定义函数*/
void temp_humi_thread_entry(void *arg);//温湿度
void oled_thread_entry(void *arg);//OLED
void onenet_thread_entry(void *arg);//onenet

  int main(void)
{

    rt_thread_t temp_humi_thread = rt_thread_create("temp_humi", temp_humi_thread_entry, RT_NULL, 2048, 1, 10);
          if (temp_humi_thread!= RT_NULL)
              rt_thread_startup(temp_humi_thread);
    rt_thread_t oled_thread = rt_thread_create("oled",  oled_thread_entry, RT_NULL,2048,  5, 10);
          if (oled_thread!= RT_NULL)
              rt_thread_startup(oled_thread);
     rt_thread_t onenet_thread = rt_thread_create("onenet",onenet_thread_entry,RT_NULL,2048,7,10);
          if (onenet_thread!=RT_NULL)
              rt_thread_startup(onenet_thread);
            return 0;
}
 void temp_humi_thread_entry(void *arg)
{
       _humi_dev = rt_device_find(HUMI_DEVICE_NAME);//通过查找获取句柄
        if(_humi_dev == RT_NULL) {//如果差找不到，我们输出如下
            rt_kprintf("find %s device failed.\r\n", HUMI_DEVICE_NAME);
        } else {//如果查找成功，我们打开传感器
            rt_device_open(_humi_dev, RT_DEVICE_FLAG_RDONLY);
        }//这部分不能写在while循环中，因为查找和打开只需要操作一次就可以

        _temp_dev = rt_device_find(TEMP_DEVICE_NAME);
            if(_temp_dev == RT_NULL) {
                rt_kprintf("find %s device failed.\r\n", TEMP_DEVICE_NAME);
            } else {
                rt_device_open(_temp_dev, RT_DEVICE_FLAG_RDONLY);
            }
        struct rt_sensor_data data1;
        struct rt_sensor_data data2;
        while(1) {
            rt_thread_mdelay(10000);
            if ((_humi_dev == RT_NULL) && (_temp_dev == RT_NULL)) continue;
            if ((rt_device_read(_temp_dev, 0, &data1, 1) == 1) & (rt_device_read(_humi_dev, 0, &data2, 1) == 1))
            {
              printf("temp:%3d.%d C humi:%3d.%d%%\r\n",data1.data.temp / 10,(rt_uint32_t)data1.data.temp % 10, data2.data.temp / 10,data2.data.humi % 10);
            aht10_temp=data1.data.temp;//将温度值直接赋值给全局变量
            aht10_humi=data2.data.humi;
            }
        }
}
 void oled_thread_entry(void *arg)
 {
               u8g2_t u8g2;
              // Initialization
               u8g2_Setup_ssd1306_i2c_128x64_noname_f( &u8g2, U8G2_R0, u8x8_byte_sw_i2c, u8x8_gpio_and_delay_rtthread);
               u8x8_SetPin(u8g2_GetU8x8(&u8g2), U8X8_PIN_I2C_CLOCK, OLED_I2C_PIN_SCL);
               u8x8_SetPin(u8g2_GetU8x8(&u8g2), U8X8_PIN_I2C_DATA, OLED_I2C_PIN_SDA);

                u8g2_InitDisplay(&u8g2);
                u8g2_SetPowerSave(&u8g2, 0);
               while (1)
               {
                sprintf(a,"%d.%d",aht10_temp/10,aht10_temp%10);
                sprintf(b,"%d.%d",aht10_humi/10,aht10_humi%10);
               u8g2_SetFont(&u8g2, u8g2_font_ncenB08_tr);
               u8g2_DrawStr(&u8g2, 35, 18, "Temputer");
               u8g2_DrawStr(&u8g2, 50, 28, a);

               u8g2_DrawStr(&u8g2, 35, 38, "Humidity");
               u8g2_DrawStr(&u8g2, 50, 48, b);

               u8g2_SendBuffer(&u8g2);
               rt_thread_mdelay(500);
                 }

   }


 void onenet_thread_entry(void *arg)
 {
     rt_thread_mdelay(10000);
     double temp_d,humi_d;
     onenet_mqtt_init();

     while (1)

     {
         temp_d = (double)aht10_temp/10;
         humi_d = (double)aht10_humi/10;
         rt_thread_delay(rt_tick_from_millisecond(5 * 1000));
         onenet_mqtt_upload_digit("strtemp",temp_d);
         rt_thread_delay(rt_tick_from_millisecond(5 * 1000));
         onenet_mqtt_upload_digit("strhumi",humi_d);
        rt_thread_delay(rt_tick_from_millisecond(5 * 1000));
     }
 }

int rt_hw_aht10_port(void)
{
    struct rt_sensor_config cfg;
    cfg.intf.dev_name  = AHT10_I2C_BUS;
    cfg.intf.user_data = (void *)AHT10_I2C_ADDR;
    rt_hw_aht10_init("aht10", &cfg);
    return RT_EOK;
}
INIT_ENV_EXPORT(rt_hw_aht10_port);








