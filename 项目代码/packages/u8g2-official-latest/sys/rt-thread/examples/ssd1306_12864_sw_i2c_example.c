#include <rthw.h>
#include <rtthread.h>
#include <rtdevice.h>
#include <u8g2_port.h>

#define OLED_I2C_PIN_SCL                    115
#define OLED_I2C_PIN_SDA                    116

#include "stdlib.h"
#include "stdio.h"

char a[12]="strtemp";
char b[12]="strhumi";
//rt_int32_t aht10_temp;
//rt_int32_t aht10_humi;
static void u8g2_ssd1306_12864_sw_i2c_example(int argc,char *argv[])
{
    u8g2_t u8g2;

    // Initialization
    u8g2_Setup_ssd1306_i2c_128x64_noname_f( &u8g2, U8G2_R0, u8x8_byte_sw_i2c, u8x8_gpio_and_delay_rtthread);
    u8x8_SetPin(u8g2_GetU8x8(&u8g2), U8X8_PIN_I2C_CLOCK, OLED_I2C_PIN_SCL);
    u8x8_SetPin(u8g2_GetU8x8(&u8g2), U8X8_PIN_I2C_DATA, OLED_I2C_PIN_SDA);    

     u8g2_InitDisplay(&u8g2);
     u8g2_SetPowerSave(&u8g2, 0);
     sprintf(a,"%d.%d",aht10_temp/10,aht10_temp%10);
     sprintf(b,"%d.%d",aht10_humi/10,aht10_temp%10);
     u8g2_SetFont(&u8g2, u8g2_font_ncenB08_tr);
     u8g2_DrawStr(&u8g2, 1, 18, "Temputer");
     u8g2_DrawStr(&u8g2, 5, 18, a);
     u8g2_DrawStr(&u8g2, 7, 18, "Humidity");
     u8g2_DrawStr(&u8g2, 9, 18, b);
     u8g2_SendBuffer(&u8g2);
}
MSH_CMD_EXPORT(u8g2_ssd1306_12864_sw_i2c_example, i2c ssd1306 software i2c sample);
   /* full buffer example, setup procedure ends in _f */













