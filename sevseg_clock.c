/************************************************************************
* 	Digital clock using pic16F73
* 	File:   sevseg_clock.c
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

#include <pic.h>
#include "sevseg_clock.h"

#define MODE NORMAL_TIME

#if MODE == NORMAL_TIME        /* Normal Time (12 Hrs Clock) initilization */
	void Time_Init() {
	    hr = 12;
	    mi = 0;
	    se = 0;
		se_led = 1;		/* TO blink LED with even second value */
	  }

	static void interrupt _isr(void)
	  {
	       if(count == COUNT_VAL) {
	        count = 0;
	        se_led = ~se_led;
	        if(++se == 60) {  
	            se = 0;
	            if(++mi == 60) {
	                mi = 0;
	                if(++hr == 13) {
	                    hr = 1;
	                  } 
	              }
	           }
	        }
	      count++;  
	      TMR0 = TIMER_VAL;
	      T0IF = 0;
	    } 
	 
	void set_time() {
	  if(hr_set&&!mi_set) {       /* Check wheather the hr_set key pressed or not  */
	      hr++;                   /* If pressed increment Hour by 1*/ 
	      while(hr_set&&!mi_set);
	      if(hr == 13) {
	         hr = 1;
	        }
	     }
	    if(mi_set&&!hr_set){   /* Check wheather the mi_set key pressed or not  */
 	      mi++;                /* If pressed increment Minute by 1*/
	      while(mi_set&&!hr_set);
	      if(mi == 60) {
	         mi = 0;
	        }
	     }
	     if(mi_set&&hr_set) {  /* Check wheather the hr_set & mi_set key pressed then Reset  */
	      t_se = se; 
	       while(mi_set&&hr_set);
	                 
	           if(se>t_se) {
	              hr = 12;
	              mi = 0;
	              se = 0;
	             }       
	       }
	 }
#endif


#if MODE == TRAIN_TIME                   /* Train Time initilization */
	void Time_Init() {
	    hr = 0;
	    mi = 0;
	    se = 0;
	  }
	
	static void interrupt _isr(void)
	  {
	       if(count == COUNT_VAL) {
	        count = 0;
	        se_led = ~se_led;
	        if(++se == 60) {  
	            se=0;
	            if(++mi == 60) {
	                mi = 0;
	                if(++hr == 24) {
	                    hr = 0;
	                  } 
	              }
	           }
	        }
	      count++;  
	      TMR0 = TIMER_VAL;
	      T0IF = 0;
	    } 

	void set_time() {
	  if(hr_set&&!mi_set) {       /* Check whether the hr_set key pressed or not  */
	      hr++;                   /* If pressed increment Hour by 1*/ 
	      while(hr_set&&!mi_set);
	      if(hr == 24) {
	         hr = 0;
	        }
	     }
	    if(mi_set&&!hr_set) {    /* Check whether the mi_set key pressed or not  */
	      mi++;                  /* If pressed increment Minute by 1*/
	      while(mi_set&&!hr_set);
	      if(mi == 60) {
	         mi = 0;
	        }
	     }
	     if(mi_set&&hr_set) { /* Check whether the hr_set & mi_set key pressed then Reset  */
	       t_se = se; 
	       while(mi_set&&hr_set);
	                 
	           if(se>t_se) {
	              hr = 0;
	              mi = 0;
	              se = 0;
	              }      
	       }
	 }	
	#endif		


void Delay(unsigned char delay_val) {
    unsigned char i,j;
    for(j = 0; j < delay_val; j++)
    for(i = 0; i < 10; i++);
}

void Timer_Init() {
    OPTION = 0x05;
	TMR0 = TIMER_VAL;
	T0IE = 1;
    GIE = 1;
}

void Port_Init() {
      TRISA  = 0x00;
	  ADCON1 = 0x06;
      TRISB = 0x00;
	  TRISC = 0x03;
}

void Display(unsigned char Hour, unsigned char Second,unsigned char Minute) {

	      set_time();  				/* For Setting Hour & Minute */    
	      PORTB = dat[Second%10];	/* Second */
	      SEG_1;      				/* Enable 7segment 1 */
	      Delay(2);
	      PORTB = dat[Second/10];
	      SEG_2;      				/* Enable 7segment 2 */
	      Delay(2);
	
	      PORTB = dat[Minute%10]; 	/* Minute */
	      SEG_3;      				/* Enable 7segment 3 */
	      Delay(2); 
	      PORTB = dat[Minute/10];
	      SEG_4;      				/* Enable 7segment 4 */
	      Delay(2); 
	
	      PORTB = dat[Hour%10]; 	/* Hour */
	      SEG_5;      				/* Enable 7segment 5 */
	      Delay(2);
	      #if MODE == NORMAL_TIME 
	      if(hr/10!=0) {
	         PORTB = dat[Hour/10];
	         SEG_6;	  				/* Enable 7segment 6 */
	        } 
	      #endif
	      #if MODE == TRAIN_TIME
	      PORTB = dat[Hour/10];
	      SEG_6;   	  				/* Enable 7segment 6 */
	      #endif
	      Delay(2);           
	 }
