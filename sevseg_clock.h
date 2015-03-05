/************************************************************************
* 	Digital clock using pic16F73
* 	File:   sevseg_clock.h
* 	Author:  OpenSourceCodeRepo
*   Rev. 0.0.1 : 13/11/2012 :  11:15 AM
* 
*	This program is free software: you can redistribute it and/or modify
*  	it under the terms of the GNU General Public License as published by
*  	the Free Software Foundation, either version 3 of the License, or
*	(at your option) any later version.
*
*	This program is distributed in the hope that it will be useful,
*	but WITHOUT ANY WARRANTY; without even the implied warranty of
*	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*	GNU General Public License for more details.
*
*	You should have received a copy of the GNU General Public License
*	along with this program.  If not, see <http://www.gnu.org/licenses/>.
*
*	Email: opensourcecoderepo@gmail.com
*   
************************************************************************/

#ifndef 	_SEVSEG_CLOCK_H_
#define		_SEVSEG_CLOCK_H_

#define hr_set RC1  
#define mi_set RC0
#define se_led RA0

#define SEG_1 PORTC = 1<<2 /* Second Digit 1*/
#define SEG_2 PORTC = 1<<3 /* Second Digit 2*/
#define SEG_3 PORTC = 1<<4 /* Minute Digit 1*/
#define SEG_4 PORTC = 1<<5 /* Minute Digit 2*/
#define SEG_5 PORTC = 1<<6 /* Hour   Digit 1*/
#define SEG_6 PORTC = 1<<7 /* Hour   Digit 2*/

#define TRAIN_TIME 0
#define NORMAL_TIME 1
extern unsigned char TIMER_VAL, COUNT_VAL;

unsigned int count=0;
unsigned char hr,mi,se,t_se;

/*
  Common Anode Type display.
 
         RB5
        -- --
  RB4  | RB6 | RB0
        -- --
  RB3  |     | RB1 
        -- --
         RB2
 */

                       /*0	 1	   2    3	4    5	  6	   7	8    9*/
unsigned char dat[10]={0xc0,0xfc,0x92,0X98,0xac,0X89,0x81,0Xdc,0x80,0X88};

#define OK 0
	
void Delay(unsigned char delay_val);
void Display(unsigned char, unsigned char, unsigned char);
void Timer_Init(void);
void Time_Init(void);
void Port_Init(void);

#endif /*_SEVSEG_CLOCK_H_ */