/************************************************************************
* 	Digital clock using pic16F73
* 	File:   main.c
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

__CONFIG(0x001);

unsigned char TIMER_VAL = 6;
unsigned char COUNT_VAL = 70;
    	       
int	main() {	
	Port_Init();  /* Initilize PORTS*/
 	Timer_Init(); /* Initilize TMR0 Registers */
 	Time_Init();  /* 12:00:00 / 00:00:00 */
  	while (1) {
    	Display(hr, se, mi);    /* Display function */
	}
 return OK;
} 
	   
	
	
	     