opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 5239"

opt pagewidth 120

	opt lm

	processor	16F73
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 27 "D:\My Projects\7 seg clock\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 27 "D:\My Projects\7 seg clock\main.c"
	dw 0x001 ;#
;BANK0:	_main->_Display
;BANK0:	_Display->___awdiv
	FNCALL	_main,_Port_Init
	FNCALL	_main,_Timer_Init
	FNCALL	_main,_Time_Init
	FNCALL	_main,_Display
	FNCALL	_Display,_set_time
	FNCALL	_Display,___awmod
	FNCALL	_Display,_Delay
	FNCALL	_Display,___awdiv
	FNROOT	_main
	FNCALL	intlevel1,__isr
	global	intlevel1
	FNROOT	intlevel1
	global	_dat
	global	_COUNT_VAL
	global	_TIMER_VAL
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\My Projects\7 seg clock\sevseg_clock.h"
	line	58

;initializer for _dat
	retlw	0C0h
	retlw	0FCh
	retlw	092h
	retlw	098h
	retlw	0ACh
	retlw	089h
	retlw	081h
	retlw	0DCh
	retlw	080h
	retlw	088h
	file	"D:\My Projects\7 seg clock\main.c"
	line	30

;initializer for _COUNT_VAL
	retlw	046h
	line	29

;initializer for _TIMER_VAL
	retlw	06h
	global	_count
	global	_mi
	global	_se
	global	_t_se
	global	_hr
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_hr:
       ds      1

	global	_ADCON0
_ADCON0  equ     31
	global	_ADRES
_ADRES  equ     30
	global	_CCP1CON
_CCP1CON  equ     23
	global	_CCP2CON
_CCP2CON  equ     29
	global	_CCPR1H
_CCPR1H  equ     22
	global	_CCPR1L
_CCPR1L  equ     21
	global	_CCPR2H
_CCPR2H  equ     28
	global	_CCPR2L
_CCPR2L  equ     27
	global	_FSR
_FSR  equ     4
	global	_INDF
_INDF  equ     0
	global	_INTCON
_INTCON  equ     11
	global	_PCL
_PCL  equ     2
	global	_PCLATH
_PCLATH  equ     10
	global	_PIR1
_PIR1  equ     12
	global	_PIR2
_PIR2  equ     13
	global	_PORTA
_PORTA  equ     5
	global	_PORTB
_PORTB  equ     6
	global	_PORTC
_PORTC  equ     7
	global	_RCREG
_RCREG  equ     26
	global	_RCSTA
_RCSTA  equ     24
	global	_SSPBUF
_SSPBUF  equ     19
	global	_SSPCON
_SSPCON  equ     20
	global	_STATUS
_STATUS  equ     3
	global	_T1CON
_T1CON  equ     16
	global	_T2CON
_T2CON  equ     18
	global	_TMR0
_TMR0  equ     1
	global	_TMR1H
_TMR1H  equ     15
	global	_TMR1L
_TMR1L  equ     14
	global	_TMR2
_TMR2  equ     17
	global	_TXREG
_TXREG  equ     25
	global	_ADCS0
_ADCS0  equ     254
	global	_ADCS1
_ADCS1  equ     255
	global	_ADGO
_ADGO  equ     250
	global	_ADIF
_ADIF  equ     102
	global	_ADON
_ADON  equ     248
	global	_CARRY
_CARRY  equ     24
	global	_CCP1IF
_CCP1IF  equ     98
	global	_CCP1M0
_CCP1M0  equ     184
	global	_CCP1M1
_CCP1M1  equ     185
	global	_CCP1M2
_CCP1M2  equ     186
	global	_CCP1M3
_CCP1M3  equ     187
	global	_CCP1X
_CCP1X  equ     189
	global	_CCP1Y
_CCP1Y  equ     188
	global	_CCP2IF
_CCP2IF  equ     104
	global	_CCP2M0
_CCP2M0  equ     232
	global	_CCP2M1
_CCP2M1  equ     233
	global	_CCP2M2
_CCP2M2  equ     234
	global	_CCP2M3
_CCP2M3  equ     235
	global	_CCP2X
_CCP2X  equ     237
	global	_CCP2Y
_CCP2Y  equ     236
	global	_CHS0
_CHS0  equ     251
	global	_CHS1
_CHS1  equ     252
	global	_CHS2
_CHS2  equ     253
	global	_CKP
_CKP  equ     164
	global	_CREN
_CREN  equ     196
	global	_DC
_DC  equ     25
	global	_FERR
_FERR  equ     194
	global	_GIE
_GIE  equ     95
	global	_GODONE
_GODONE  equ     250
	global	_INTE
_INTE  equ     92
	global	_INTF
_INTF  equ     89
	global	_IRP
_IRP  equ     31
	global	_OERR
_OERR  equ     193
	global	_PD
_PD  equ     27
	global	_PEIE
_PEIE  equ     94
	global	_RA0
_RA0  equ     40
	global	_RA1
_RA1  equ     41
	global	_RA2
_RA2  equ     42
	global	_RA3
_RA3  equ     43
	global	_RA4
_RA4  equ     44
	global	_RA5
_RA5  equ     45
	global	_RB0
_RB0  equ     48
	global	_RB1
_RB1  equ     49
	global	_RB2
_RB2  equ     50
	global	_RB3
_RB3  equ     51
	global	_RB4
_RB4  equ     52
	global	_RB5
_RB5  equ     53
	global	_RB6
_RB6  equ     54
	global	_RB7
_RB7  equ     55
	global	_RBIE
_RBIE  equ     91
	global	_RBIF
_RBIF  equ     88
	global	_RC0
_RC0  equ     56
	global	_RC1
_RC1  equ     57
	global	_RC2
_RC2  equ     58
	global	_RC3
_RC3  equ     59
	global	_RC4
_RC4  equ     60
	global	_RC5
_RC5  equ     61
	global	_RC6
_RC6  equ     62
	global	_RC7
_RC7  equ     63
	global	_RCIF
_RCIF  equ     101
	global	_RP0
_RP0  equ     29
	global	_RP1
_RP1  equ     30
	global	_RX9
_RX9  equ     198
	global	_RX9D
_RX9D  equ     192
	global	_SPEN
_SPEN  equ     199
	global	_SREN
_SREN  equ     197
	global	_SSPEN
_SSPEN  equ     165
	global	_SSPIF
_SSPIF  equ     99
	global	_SSPM0
_SSPM0  equ     160
	global	_SSPM1
_SSPM1  equ     161
	global	_SSPM2
_SSPM2  equ     162
	global	_SSPM3
_SSPM3  equ     163
	global	_SSPOV
_SSPOV  equ     166
	global	_T0IE
_T0IE  equ     93
	global	_T0IF
_T0IF  equ     90
	global	_T1CKPS0
_T1CKPS0  equ     132
	global	_T1CKPS1
_T1CKPS1  equ     133
	global	_T1OSCEN
_T1OSCEN  equ     131
	global	_T1SYNC
_T1SYNC  equ     130
	global	_T2CKPS0
_T2CKPS0  equ     144
	global	_T2CKPS1
_T2CKPS1  equ     145
	global	_TMR0IE
_TMR0IE  equ     93
	global	_TMR0IF
_TMR0IF  equ     90
	global	_TMR1CS
_TMR1CS  equ     129
	global	_TMR1IF
_TMR1IF  equ     96
	global	_TMR1ON
_TMR1ON  equ     128
	global	_TMR2IF
_TMR2IF  equ     97
	global	_TMR2ON
_TMR2ON  equ     146
	global	_TO
_TO  equ     28
	global	_TOUTPS0
_TOUTPS0  equ     147
	global	_TOUTPS1
_TOUTPS1  equ     148
	global	_TOUTPS2
_TOUTPS2  equ     149
	global	_TOUTPS3
_TOUTPS3  equ     150
	global	_TXIF
_TXIF  equ     100
	global	_WCOL
_WCOL  equ     167
	global	_ZERO
_ZERO  equ     26
	global	_ADCON1
_ADCON1  equ     159
	global	_OPTION
_OPTION  equ     129
	global	_PCON
_PCON  equ     142
	global	_PIE1
_PIE1  equ     140
	global	_PIE2
_PIE2  equ     141
	global	_PR2
_PR2  equ     146
	global	_SPBRG
_SPBRG  equ     153
	global	_SSPADD
_SSPADD  equ     147
	global	_SSPSTAT
_SSPSTAT  equ     148
	global	_TRISA
_TRISA  equ     133
	global	_TRISB
_TRISB  equ     134
	global	_TRISC
_TRISC  equ     135
	global	_TXSTA
_TXSTA  equ     152
	global	_ADIE
_ADIE  equ     1126
	global	_BF
_BF  equ     1184
	global	_BOR
_BOR  equ     1136
	global	_BRGH
_BRGH  equ     1218
	global	_CCP1IE
_CCP1IE  equ     1122
	global	_CCP2IE
_CCP2IE  equ     1128
	global	_CKE
_CKE  equ     1190
	global	_CSRC
_CSRC  equ     1223
	global	_DA
_DA  equ     1189
	global	_INTEDG
_INTEDG  equ     1038
	global	_PCFG0
_PCFG0  equ     1272
	global	_PCFG1
_PCFG1  equ     1273
	global	_PCFG2
_PCFG2  equ     1274
	global	_POR
_POR  equ     1137
	global	_PS0
_PS0  equ     1032
	global	_PS1
_PS1  equ     1033
	global	_PS2
_PS2  equ     1034
	global	_PSA
_PSA  equ     1035
	global	_RBPU
_RBPU  equ     1039
	global	_RCIE
_RCIE  equ     1125
	global	_RW
_RW  equ     1186
	global	_SMP
_SMP  equ     1191
	global	_SSPIE
_SSPIE  equ     1123
	global	_START
_START  equ     1187
	global	_STOP
_STOP  equ     1188
	global	_SYNC
_SYNC  equ     1220
	global	_T0CS
_T0CS  equ     1037
	global	_T0SE
_T0SE  equ     1036
	global	_TMR1IE
_TMR1IE  equ     1120
	global	_TMR2IE
_TMR2IE  equ     1121
	global	_TRISA0
_TRISA0  equ     1064
	global	_TRISA1
_TRISA1  equ     1065
	global	_TRISA2
_TRISA2  equ     1066
	global	_TRISA3
_TRISA3  equ     1067
	global	_TRISA4
_TRISA4  equ     1068
	global	_TRISA5
_TRISA5  equ     1069
	global	_TRISB0
_TRISB0  equ     1072
	global	_TRISB1
_TRISB1  equ     1073
	global	_TRISB2
_TRISB2  equ     1074
	global	_TRISB3
_TRISB3  equ     1075
	global	_TRISB4
_TRISB4  equ     1076
	global	_TRISB5
_TRISB5  equ     1077
	global	_TRISB6
_TRISB6  equ     1078
	global	_TRISB7
_TRISB7  equ     1079
	global	_TRISC0
_TRISC0  equ     1080
	global	_TRISC1
_TRISC1  equ     1081
	global	_TRISC2
_TRISC2  equ     1082
	global	_TRISC3
_TRISC3  equ     1083
	global	_TRISC4
_TRISC4  equ     1084
	global	_TRISC5
_TRISC5  equ     1085
	global	_TRISC6
_TRISC6  equ     1086
	global	_TRISC7
_TRISC7  equ     1087
	global	_TRMT
_TRMT  equ     1217
	global	_TX9
_TX9  equ     1222
	global	_TX9D
_TX9D  equ     1216
	global	_TXEN
_TXEN  equ     1221
	global	_TXIE
_TXIE  equ     1124
	global	_UA
_UA  equ     1185
	global	_PMADR
_PMADR  equ     269
	global	_PMADRH
_PMADRH  equ     271
	global	_PMDATA
_PMDATA  equ     268
	global	_PMDATH
_PMDATH  equ     270
	global	_PMCON1
_PMCON1  equ     396
	global	_RD
_RD  equ     3168
	file	"7_Seg_clock.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_count:
       ds      2

_mi:
       ds      1

_se:
       ds      1

_t_se:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\My Projects\7 seg clock\sevseg_clock.h"
	line	58
_dat:
       ds      10

psect	dataBANK0
	file	"D:\My Projects\7 seg clock\main.c"
	line	30
_COUNT_VAL:
       ds      1

psect	dataBANK0
	file	"D:\My Projects\7 seg clock\main.c"
	line	29
_TIMER_VAL:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+12)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_Time_Init
??_Time_Init: ;@ 0x0
	global	??_Port_Init
??_Port_Init: ;@ 0x0
	global	??_Timer_Init
??_Timer_Init: ;@ 0x0
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_Port_Init
?_Port_Init: ;@ 0x0
	global	?_Timer_Init
?_Timer_Init: ;@ 0x0
	global	??_set_time
??_set_time: ;@ 0x0
	global	??___awmod
??___awmod: ;@ 0x0
	global	??_Delay
??_Delay: ;@ 0x0
	global	??___awdiv
??___awdiv: ;@ 0x0
	global	?_Time_Init
?_Time_Init: ;@ 0x0
	ds	1
	global	?_set_time
?_set_time: ;@ 0x1
	global	Delay@delay_val
Delay@delay_val:	; 1 bytes @ 0x1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x1
	ds	1
	global	Delay@j
Delay@j:	; 1 bytes @ 0x2
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x2
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x2
	ds	1
	global	?___awmod
?___awmod: ;@ 0x3
	global	Delay@i
Delay@i:	; 1 bytes @ 0x3
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x3
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x3
	ds	1
	global	?_Delay
?_Delay: ;@ 0x4
	ds	1
	global	?___awdiv
?___awdiv: ;@ 0x5
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x5
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x5
	ds	2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	2
	global	??_Display
??_Display: ;@ 0x9
	ds	2
	global	Display@Hour
Display@Hour:	; 1 bytes @ 0xB
	ds	1
	global	?_Display
?_Display: ;@ 0xC
	global	Display@Second
Display@Second:	; 1 bytes @ 0xC
	ds	1
	global	Display@Minute
Display@Minute:	; 1 bytes @ 0xD
	ds	1
	global	??_main
??_main: ;@ 0xE
	ds	1
	global	??__isr
??__isr: ;@ 0xF
	global	?_main
?_main: ;@ 0xF
	ds	6
	global	?__isr
?__isr: ;@ 0x15
;Data sizes: Strings 0, constant 0, data 12, bss 5, persistent 1 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON           0      0       0
; BANK0           94     21      39
; BANK1           94      0       0


;Pointer list with targets:

;?___awmod	int  size(1); Largest target is 0
;?___awdiv	int  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 1, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                1    0  360   0.00
;                                   14 BANK0    1
;          _Port_Init
;         _Timer_Init
;          _Time_Init
;            _Display
;  _Time_Init                                         0    0    0   0.00
;  _Display                                           3    2  360   0.00
;                                    9 BANK0    5
;           _set_time
;            ___awmod
;              _Delay
;            ___awdiv
;  _Port_Init                                         0    0    0   0.00
;  _Timer_Init                                        0    0    0   0.00
;    _Delay                                           4    0   40   0.00
;                                    0 BANK0    4
;    ___awdiv                                         5    4  130   0.00
;                                    0 BANK0    9
;    _set_time                                        1    0    0   0.00
;                                    0 BANK0    1
;    ___awmod                                         3    4  130   0.00
;                                    0 BANK0    7
; Estimated maximum call depth 2
;__isr                                                6    0    0   0.00
;                                   15 BANK0    6
; Estimated maximum call depth 0
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            0      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               0      0       0       1        0.0%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;STACK                0      0       0       2        0.0%
;BITBANK0            5E      0       0       3        0.0%
;BANK0               5E     15      27       4       41.5%
;BITSFR3              0      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITBANK1            5E      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITSFR2              0      0       0       5        0.0%
;BANK1               5E      0       0       6        0.0%
;ABS                  0      0      27       7        0.0%
;DATA                 0      0      27       8        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 32 in file "D:\My Projects\7 seg clock\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  2   15[BANK0 ] int 
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       1       0
;      Temp:     1
;      Total:    1
; This function calls:
;		_Port_Init
;		_Timer_Init
;		_Time_Init
;		_Display
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\My Projects\7 seg clock\main.c"
	line	32
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;main.c: 27: asm("\tpsect config,class=CONFIG,delta=2"); asm("\tdw ""0x001");
;main.c: 29: unsigned char TIMER_VAL = 6;
;main.c: 30: unsigned char COUNT_VAL = 70;
;main.c: 32: int main() {
	
_main:	
	opt stack 7
; Regs used in _main: [allreg]
	line	33
	
l30000663:	
;main.c: 33: Port_Init();
	fcall	_Port_Init
	line	34
;main.c: 34: Timer_Init();
	fcall	_Timer_Init
	line	35
;main.c: 35: Time_Init();
	fcall	_Time_Init
	
l30000664:	
	line	37
;main.c: 37: Display(hr, se, mi);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_se),w
	movwf	(?_Display)
	movf	(_mi),w
	movwf	(??_main+0+0)
	movf	(??_main+0+0),w
	movwf	0+(?_Display)+01h
	movf	(_hr),w
	fcall	_Display
	goto	l30000664
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	40
	signat	_main,90
	global	_Time_Init
psect	text47,local,class=CODE,delta=2
global __ptext47
__ptext47:

; *************** function _Time_Init *****************
; Defined at:
;		line 30 in file "D:\My Projects\7 seg clock\sevseg_clock.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text47
	file	"D:\My Projects\7 seg clock\sevseg_clock.c"
	line	30
	global	__size_of_Time_Init
	__size_of_Time_Init	equ	__end_of_Time_Init-_Time_Init
;sevseg_clock.c: 30: void Time_Init() {
	
_Time_Init:	
	opt stack 6
; Regs used in _Time_Init: [wreg+status,2+status,0]
	line	31
	
l30000668:	
;sevseg_clock.c: 31: hr = 12;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_hr)
	
l30000669:	
	line	32
;sevseg_clock.c: 32: mi = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_mi)
	
l30000670:	
	line	33
;sevseg_clock.c: 33: se = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_se)
	
l30000671:	
	line	34
;sevseg_clock.c: 34: RA0 = 1;
	bsf	(40/8),(40)&7
	
l5:	
	return
	opt stack 0
GLOBAL	__end_of_Time_Init
	__end_of_Time_Init:
; =============== function _Time_Init ends ============

psect	text48,local,class=CODE,delta=2
global __ptext48
__ptext48:
	line	35
	signat	_Time_Init,88
	global	_Display

; *************** function _Display *****************
; Defined at:
;		line 162 in file "D:\My Projects\7 seg clock\sevseg_clock.c"
; Parameters:    Size  Location     Type
;  Hour            1    wreg     unsigned char 
;  Second          1   12[BANK0 ] unsigned char 
;  Minute          1   13[BANK0 ] unsigned char 
; Auto vars:     Size  Location     Type
;  Hour            1   11[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       5       0
;      Temp:     2
;      Total:    5
; This function calls:
;		_set_time
;		___awmod
;		_Delay
;		___awdiv
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text48
	file	"D:\My Projects\7 seg clock\sevseg_clock.c"
	line	162
	global	__size_of_Display
	__size_of_Display	equ	__end_of_Display-_Display
;sevseg_clock.c: 162: void Display(unsigned char Hour, unsigned char Second,unsigned char Minute) {
	
_Display:	
	opt stack 6
; Regs used in _Display: [allreg]
;Display@Hour stored from wreg
	line	164
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Display@Hour)
	
l30000606:	
;sevseg_clock.c: 164: set_time();
	fcall	_set_time
	
l30000607:	
	line	165
;sevseg_clock.c: 165: PORTB = dat[Second%10];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Display@Second),w
	movwf	(??_Display+0+0)
	clrf	(??_Display+0+0+1)
	movf	0+(??_Display+0+0),w
	movwf	(?___awmod)
	movf	1+(??_Display+0+0),w
	movwf	(?___awmod+1)
	movlw	low(0Ah)
	movwf	0+(?___awmod)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	(_dat)&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(6)	;volatile
	
l30000608:	
	line	166
;sevseg_clock.c: 166: PORTC = 1<<2;
	movlw	(04h)
	movwf	(7)	;volatile
	
l30000609:	
	line	167
;sevseg_clock.c: 167: Delay(2);
	movlw	(02h)
	fcall	_Delay
	
l30000610:	
	line	168
;sevseg_clock.c: 168: PORTB = dat[Second/10];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Display@Second),w
	movwf	(??_Display+0+0)
	clrf	(??_Display+0+0+1)
	movf	0+(??_Display+0+0),w
	movwf	(?___awdiv)
	movf	1+(??_Display+0+0),w
	movwf	(?___awdiv+1)
	movlw	low(0Ah)
	movwf	0+(?___awdiv)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	(_dat)&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(6)	;volatile
	line	169
;sevseg_clock.c: 169: PORTC = 1<<3;
	movlw	(08h)
	movwf	(7)	;volatile
	
l30000611:	
	line	170
;sevseg_clock.c: 170: Delay(2);
	movlw	(02h)
	fcall	_Delay
	
l30000612:	
	line	172
;sevseg_clock.c: 172: PORTB = dat[Minute%10];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Display@Minute),w
	movwf	(??_Display+0+0)
	clrf	(??_Display+0+0+1)
	movf	0+(??_Display+0+0),w
	movwf	(?___awmod)
	movf	1+(??_Display+0+0),w
	movwf	(?___awmod+1)
	movlw	low(0Ah)
	movwf	0+(?___awmod)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	(_dat)&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(6)	;volatile
	
l30000613:	
	line	173
;sevseg_clock.c: 173: PORTC = 1<<4;
	movlw	(010h)
	movwf	(7)	;volatile
	
l30000614:	
	line	174
;sevseg_clock.c: 174: Delay(2);
	movlw	(02h)
	fcall	_Delay
	line	175
;sevseg_clock.c: 175: PORTB = dat[Minute/10];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Display@Minute),w
	movwf	(??_Display+0+0)
	clrf	(??_Display+0+0+1)
	movf	0+(??_Display+0+0),w
	movwf	(?___awdiv)
	movf	1+(??_Display+0+0),w
	movwf	(?___awdiv+1)
	movlw	low(0Ah)
	movwf	0+(?___awdiv)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	(_dat)&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(6)	;volatile
	
l30000615:	
	line	176
;sevseg_clock.c: 176: PORTC = 1<<5;
	movlw	(020h)
	movwf	(7)	;volatile
	
l30000616:	
	line	177
;sevseg_clock.c: 177: Delay(2);
	movlw	(02h)
	fcall	_Delay
	
l30000617:	
	line	179
;sevseg_clock.c: 179: PORTB = dat[Hour%10];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Display@Hour),w
	movwf	(??_Display+0+0)
	clrf	(??_Display+0+0+1)
	movf	0+(??_Display+0+0),w
	movwf	(?___awmod)
	movf	1+(??_Display+0+0),w
	movwf	(?___awmod+1)
	movlw	low(0Ah)
	movwf	0+(?___awmod)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	(_dat)&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(6)	;volatile
	
l30000618:	
	line	180
;sevseg_clock.c: 180: PORTC = 1<<6;
	movlw	(040h)
	movwf	(7)	;volatile
	line	181
;sevseg_clock.c: 181: Delay(2);
	movlw	(02h)
	fcall	_Delay
	
l30000619:	
	line	183
;sevseg_clock.c: 183: if(hr/10!=0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_hr),w
	movwf	(??_Display+0+0)
	clrf	(??_Display+0+0+1)
	movf	0+(??_Display+0+0),w
	movwf	(?___awdiv)
	movf	1+(??_Display+0+0),w
	movwf	(?___awdiv+1)
	movlw	low(0Ah)
	movwf	0+(?___awdiv)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	iorwf	(0+(?___awdiv)),w
	skipnz
	goto	u221
	goto	u220
u221:
	goto	l30000622
u220:
	
l30000620:	
	line	184
;sevseg_clock.c: 184: PORTB = dat[Hour/10];
	movf	(Display@Hour),w
	movwf	(??_Display+0+0)
	clrf	(??_Display+0+0+1)
	movf	0+(??_Display+0+0),w
	movwf	(?___awdiv)
	movf	1+(??_Display+0+0),w
	movwf	(?___awdiv+1)
	movlw	low(0Ah)
	movwf	0+(?___awdiv)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	(_dat)&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(6)	;volatile
	
l30000621:	
	line	185
;sevseg_clock.c: 185: PORTC = 1<<7;
	movlw	(080h)
	movwf	(7)	;volatile
	
l30000622:	
	line	192
;sevseg_clock.c: 186: }
;sevseg_clock.c: 192: Delay(2);
	movlw	(02h)
	fcall	_Delay
	
l37:	
	return
	opt stack 0
GLOBAL	__end_of_Display
	__end_of_Display:
; =============== function _Display ends ============

psect	text49,local,class=CODE,delta=2
global __ptext49
__ptext49:
	line	193
	signat	_Display,12408
	global	_Port_Init

; *************** function _Port_Init *****************
; Defined at:
;		line 155 in file "D:\My Projects\7 seg clock\sevseg_clock.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text49
	file	"D:\My Projects\7 seg clock\sevseg_clock.c"
	line	155
	global	__size_of_Port_Init
	__size_of_Port_Init	equ	__end_of_Port_Init-_Port_Init
;sevseg_clock.c: 155: void Port_Init() {
	
_Port_Init:	
	opt stack 6
; Regs used in _Port_Init: [wreg+status,2+status,0]
	line	156
	
l30000660:	
;sevseg_clock.c: 156: TRISA = 0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	
l30000661:	
	line	157
;sevseg_clock.c: 157: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	
l30000662:	
	line	158
;sevseg_clock.c: 158: TRISB = 0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(134)^080h	;volatile
	line	159
;sevseg_clock.c: 159: TRISC = 0x03;
	movlw	(03h)
	movwf	(135)^080h	;volatile
	
l36:	
	return
	opt stack 0
GLOBAL	__end_of_Port_Init
	__end_of_Port_Init:
; =============== function _Port_Init ends ============

psect	text50,local,class=CODE,delta=2
global __ptext50
__ptext50:
	line	160
	signat	_Port_Init,88
	global	_Timer_Init

; *************** function _Timer_Init *****************
; Defined at:
;		line 148 in file "D:\My Projects\7 seg clock\sevseg_clock.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text50
	file	"D:\My Projects\7 seg clock\sevseg_clock.c"
	line	148
	global	__size_of_Timer_Init
	__size_of_Timer_Init	equ	__end_of_Timer_Init-_Timer_Init
;sevseg_clock.c: 148: void Timer_Init() {
	
_Timer_Init:	
	opt stack 6
; Regs used in _Timer_Init: [wreg]
	line	149
	
l30000665:	
;sevseg_clock.c: 149: OPTION = 0x05;
	movlw	(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h
	line	150
;sevseg_clock.c: 150: TMR0 = TIMER_VAL;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TIMER_VAL),w
	movwf	(1)	;volatile
	
l30000666:	
	line	151
;sevseg_clock.c: 151: T0IE = 1;
	bsf	(93/8),(93)&7
	
l30000667:	
	line	152
;sevseg_clock.c: 152: GIE = 1;
	bsf	(95/8),(95)&7
	
l35:	
	return
	opt stack 0
GLOBAL	__end_of_Timer_Init
	__end_of_Timer_Init:
; =============== function _Timer_Init ends ============

psect	text51,local,class=CODE,delta=2
global __ptext51
__ptext51:
	line	153
	signat	_Timer_Init,88
	global	_Delay

; *************** function _Delay *****************
; Defined at:
;		line 142 in file "D:\My Projects\7 seg clock\sevseg_clock.c"
; Parameters:    Size  Location     Type
;  delay_val       1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  delay_val       1    1[BANK0 ] unsigned char 
;  i               1    3[BANK0 ] unsigned char 
;  j               1    2[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       4       0
;      Temp:     1
;      Total:    4
; This function calls:
;		Nothing
; This function is called by:
;		_Display
; This function uses a non-reentrant model
; 
psect	text51
	file	"D:\My Projects\7 seg clock\sevseg_clock.c"
	line	142
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
;sevseg_clock.c: 142: void Delay(unsigned char delay_val) {
	
_Delay:	
	opt stack 5
; Regs used in _Delay: [wreg+status,2+status,0]
;Delay@delay_val stored from wreg
	line	144
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Delay@delay_val)
	
l30000593:	
;sevseg_clock.c: 143: unsigned char i,j;
;sevseg_clock.c: 144: for(j = 0; j < delay_val; j++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(Delay@j)
	goto	l30000599
	
l28:	
	line	145
;sevseg_clock.c: 145: for(i = 0; i < 10; i++);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(Delay@i)
	
l30000596:	
	movlw	(01h)
	movwf	(??_Delay+0+0)
	movf	(??_Delay+0+0),w
	addwf	(Delay@i),f
	
l30000597:	
	movlw	(0Ah)
	subwf	(Delay@i),w
	skipc
	goto	u201
	goto	u200
u201:
	goto	l30000596
u200:
	
l30000598:	
	line	144
	movlw	(01h)
	movwf	(??_Delay+0+0)
	movf	(??_Delay+0+0),w
	addwf	(Delay@j),f
	
l30000599:	
	movf	(Delay@delay_val),w
	subwf	(Delay@j),w
	skipc
	goto	u211
	goto	u210
u211:
	goto	l28
u210:
	
l27:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
; =============== function _Delay ends ============

psect	text52,local,class=CODE,delta=2
global __ptext52
__ptext52:
	line	146
	signat	_Delay,4216
	global	___awdiv

; *************** function ___awdiv *****************
; Defined at:
;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\awdiv.c"
; Parameters:    Size  Location     Type
;  dividend        2    5[BANK0 ] int 
;  divisor         2    7[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  quotient        2    3[BANK0 ] int 
;  sign            1    2[BANK0 ] unsigned char 
;  counter         1    1[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  2    5[BANK0 ] int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       9       0
;      Temp:     1
;      Total:    9
; This function calls:
;		Nothing
; This function is called by:
;		_Display
; This function uses a non-reentrant model
; 
psect	text52
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l30000623:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	
l30000624:	
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u231
	goto	u230
u231:
	goto	l30000626
u230:
	
l30000625:	
	line	11
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	
l30000626:	
	line	14
	btfss	(___awdiv@dividend+1),7
	goto	u241
	goto	u240
u241:
	goto	l190
u240:
	
l30000627:	
	line	15
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	
l30000628:	
	line	16
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	xorwf	(___awdiv@sign),f
	
l190:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u251
	goto	u250
u251:
	goto	l30000638
u250:
	
l30000629:	
	line	20
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	goto	l30000632
	
l30000630:	
	line	22
	movlw	01h
u265:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u265
	
l30000631:	
	line	23
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	addwf	(___awdiv@counter),f
	
l30000632:	
	line	21
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u271
	goto	u270
u271:
	goto	l30000630
u270:
	
l30000633:	
	line	26
	movlw	01h
u285:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u285
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u295
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u295:
	skipc
	goto	u291
	goto	u290
u291:
	goto	l30000636
u290:
	
l30000634:	
	line	28
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	
l30000635:	
	line	29
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	
l30000636:	
	line	31
	movlw	01h
u305:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u305
	
l30000637:	
	line	32
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u311
	goto	u310
u311:
	goto	l30000633
u310:
	
l30000638:	
	line	34
	movf	(___awdiv@sign),w
	skipz
	goto	u320
	goto	l30000640
u320:
	
l30000639:	
	line	35
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l30000640:	
	line	36
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l188:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
; =============== function ___awdiv ends ============

psect	text53,local,class=CODE,delta=2
global __ptext53
__ptext53:
	line	37
	signat	___awdiv,8314
	global	_set_time

; *************** function _set_time *****************
; Defined at:
;		line 57 in file "D:\My Projects\7 seg clock\sevseg_clock.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       1       0
;      Temp:     1
;      Total:    1
; This function calls:
;		Nothing
; This function is called by:
;		_Display
; This function uses a non-reentrant model
; 
psect	text53
	file	"D:\My Projects\7 seg clock\sevseg_clock.c"
	line	57
	global	__size_of_set_time
	__size_of_set_time	equ	__end_of_set_time-_set_time
;sevseg_clock.c: 57: void set_time() {
	
_set_time:	
	opt stack 5
; Regs used in _set_time: [wreg+status,2+status,0]
	line	58
	
l30000573:	
;sevseg_clock.c: 58: if(RC1&&!RC0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7
	goto	u51
	goto	u50
u51:
	goto	l30000579
u50:
	
l30000574:	
	btfsc	(56/8),(56)&7
	goto	u61
	goto	u60
u61:
	goto	l30000579
u60:
	
l30000575:	
	line	59
;sevseg_clock.c: 59: hr++;
	movlw	(01h)
	movwf	(??_set_time+0+0)
	movf	(??_set_time+0+0),w
	addwf	(_hr),f
	
l13:	
	line	60
	btfss	(57/8),(57)&7
	goto	u71
	goto	u70
u71:
	goto	l30000577
u70:
	
l30000576:	
	btfss	(56/8),(56)&7
	goto	u81
	goto	u80
u81:
	goto	l13
u80:
	
l30000577:	
	line	61
;sevseg_clock.c: 61: if(hr == 13) {
	movf	(_hr),w
	xorlw	0Dh
	skipz
	goto	u91
	goto	u90
u91:
	goto	l30000579
u90:
	
l30000578:	
	line	62
;sevseg_clock.c: 62: hr = 1;
	clrf	(_hr)
	bsf	status,0
	rlf	(_hr),f
	
l30000579:	
	line	65
;sevseg_clock.c: 63: }
;sevseg_clock.c: 64: }
;sevseg_clock.c: 65: if(RC0&&!RC1){
	btfss	(56/8),(56)&7
	goto	u101
	goto	u100
u101:
	goto	l30000585
u100:
	
l30000580:	
	btfsc	(57/8),(57)&7
	goto	u111
	goto	u110
u111:
	goto	l30000585
u110:
	
l30000581:	
	line	66
;sevseg_clock.c: 66: mi++;
	movlw	(01h)
	movwf	(??_set_time+0+0)
	movf	(??_set_time+0+0),w
	addwf	(_mi),f
	
l18:	
	line	67
	btfss	(56/8),(56)&7
	goto	u121
	goto	u120
u121:
	goto	l30000583
u120:
	
l30000582:	
	btfss	(57/8),(57)&7
	goto	u131
	goto	u130
u131:
	goto	l18
u130:
	
l30000583:	
	line	68
;sevseg_clock.c: 68: if(mi == 60) {
	movf	(_mi),w
	xorlw	03Ch
	skipz
	goto	u141
	goto	u140
u141:
	goto	l30000585
u140:
	
l30000584:	
	line	69
;sevseg_clock.c: 69: mi = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_mi)
	
l30000585:	
	line	72
;sevseg_clock.c: 70: }
;sevseg_clock.c: 71: }
;sevseg_clock.c: 72: if(RC0&&RC1) {
	btfss	(56/8),(56)&7
	goto	u151
	goto	u150
u151:
	goto	l11
u150:
	
l30000586:	
	btfss	(57/8),(57)&7
	goto	u161
	goto	u160
u161:
	goto	l11
u160:
	
l30000587:	
	line	73
;sevseg_clock.c: 73: t_se = se;
	movf	(_se),w
	movwf	(_t_se)
	
l23:	
	line	74
	btfss	(56/8),(56)&7
	goto	u171
	goto	u170
u171:
	goto	l30000589
u170:
	
l30000588:	
	btfsc	(57/8),(57)&7
	goto	u181
	goto	u180
u181:
	goto	l23
u180:
	
l30000589:	
	line	76
;sevseg_clock.c: 76: if(se>t_se) {
	movf	(_se),w
	subwf	(_t_se),w
	skipnc
	goto	u191
	goto	u190
u191:
	goto	l11
u190:
	
l30000590:	
	line	77
;sevseg_clock.c: 77: hr = 12;
	movlw	(0Ch)
	movwf	(_hr)
	
l30000591:	
	line	78
;sevseg_clock.c: 78: mi = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_mi)
	
l30000592:	
	line	79
;sevseg_clock.c: 79: se = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_se)
	
l11:	
	return
	opt stack 0
GLOBAL	__end_of_set_time
	__end_of_set_time:
; =============== function _set_time ends ============

psect	text54,local,class=CODE,delta=2
global __ptext54
__ptext54:
	line	82
	signat	_set_time,88
	global	___awmod

; *************** function ___awmod *****************
; Defined at:
;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\awmod.c"
; Parameters:    Size  Location     Type
;  dividend        2    3[BANK0 ] int 
;  divisor         2    5[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  sign            1    1[BANK0 ] unsigned char 
;  counter         1    2[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  2    3[BANK0 ] int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       7       0
;      Temp:     1
;      Total:    7
; This function calls:
;		Nothing
; This function is called by:
;		_Display
; This function uses a non-reentrant model
; 
psect	text54
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l30000642:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@sign)
	
l30000643:	
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u331
	goto	u330
u331:
	goto	l30000645
u330:
	
l30000644:	
	line	10
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	
l30000645:	
	line	13
	btfss	(___awmod@divisor+1),7
	goto	u341
	goto	u340
u341:
	goto	l30000647
u340:
	
l30000646:	
	line	14
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l30000647:	
	line	15
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u351
	goto	u350
u351:
	goto	l30000656
u350:
	
l30000648:	
	line	16
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	goto	l30000651
	
l30000649:	
	line	18
	movlw	01h
u365:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u365
	
l30000650:	
	line	19
	movlw	(01h)
	movwf	(??___awmod+0+0)
	movf	(??___awmod+0+0),w
	addwf	(___awmod@counter),f
	
l30000651:	
	line	17
	btfss	(___awmod@divisor+1),(15)&7
	goto	u371
	goto	u370
u371:
	goto	l30000649
u370:
	
l30000652:	
	line	22
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u385
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u385:
	skipc
	goto	u381
	goto	u380
u381:
	goto	l30000654
u380:
	
l30000653:	
	line	23
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l30000654:	
	line	24
	movlw	01h
u395:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u395
	
l30000655:	
	line	25
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u401
	goto	u400
u401:
	goto	l30000652
u400:
	
l30000656:	
	line	27
	movf	(___awmod@sign),w
	skipz
	goto	u410
	goto	l30000658
u410:
	
l30000657:	
	line	28
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l30000658:	
	line	29
	
l268:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
; =============== function ___awmod ends ============

psect	text55,local,class=CODE,delta=2
global __ptext55
__ptext55:
	line	30
	signat	___awmod,8314
	global	__isr

; *************** function __isr *****************
; Defined at:
;		line 38 in file "D:\My Projects\7 seg clock\sevseg_clock.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       6       0
;      Temp:     6
;      Total:    6
; This function calls:
;		Nothing
; This function is called by:
;		Interrupt level 1
; This function uses a non-reentrant model
; 
psect	text55
	file	"D:\My Projects\7 seg clock\sevseg_clock.c"
	line	38
	global	__size_of__isr
	__size_of__isr	equ	__end_of__isr-__isr
;sevseg_clock.c: 37: static void interrupt _isr(void)
;sevseg_clock.c: 38: {
	
__isr:	
	opt stack 6
; Regs used in __isr: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+1
	movwf	saved_w
	movf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__isr+2)
	movf	fsr0,w
	movwf	(??__isr+3)
	movf	pclath,w
	movwf	(??__isr+4)
	movf	btemp+0,w
	movwf	(??__isr+5)
	ljmp	__isr
psect	text55
	line	39
	
i1l30000564:	
;sevseg_clock.c: 39: if(count == COUNT_VAL) {
	movf	(_COUNT_VAL),w
	movwf	(??__isr+0+0)
	clrf	(??__isr+0+0+1)
	movf	(_count+1),w
	xorwf	1+(??__isr+0+0),w
	skipz
	goto	u1_25
	movf	(_count),w
	xorwf	0+(??__isr+0+0),w
u1_25:

	skipz
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l30000570
u1_20:
	
i1l30000565:	
	line	40
;sevseg_clock.c: 40: count = 0;
	movlw	low(0)
	movwf	(_count)
	movlw	high(0)
	movwf	((_count))+1
	line	41
;sevseg_clock.c: 41: RA0 = ~RA0;
	movlw	1<<((40)&7)
	xorwf	((40)/8),f
	
i1l30000566:	
	line	42
;sevseg_clock.c: 42: if(++se == 60) {
	movlw	(01h)
	movwf	(??__isr+0+0)
	movf	(??__isr+0+0),w
	addwf	(_se),f
	movf	((_se))&07fh,w
	xorlw	03Ch
	skipz
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l30000570
u2_20:
	
i1l30000567:	
	line	43
;sevseg_clock.c: 43: se = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_se)
	line	44
;sevseg_clock.c: 44: if(++mi == 60) {
	movlw	(01h)
	movwf	(??__isr+0+0)
	movf	(??__isr+0+0),w
	addwf	(_mi),f
	movf	((_mi))&07fh,w
	xorlw	03Ch
	skipz
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l30000570
u3_20:
	
i1l30000568:	
	line	45
;sevseg_clock.c: 45: mi = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_mi)
	line	46
;sevseg_clock.c: 46: if(++hr == 13) {
	movlw	(01h)
	movwf	(??__isr+0+0)
	movf	(??__isr+0+0),w
	addwf	(_hr),f
	movf	((_hr))&07fh,w
	xorlw	0Dh
	skipz
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l8
u4_20:
	
i1l30000569:	
	line	47
;sevseg_clock.c: 47: hr = 1;
	clrf	(_hr)
	bsf	status,0
	rlf	(_hr),f
	goto	i1l30000570
	
i1l8:	
	
i1l30000570:	
	line	52
;sevseg_clock.c: 48: }
;sevseg_clock.c: 49: }
;sevseg_clock.c: 50: }
;sevseg_clock.c: 51: }
;sevseg_clock.c: 52: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
i1l30000571:	
	line	53
;sevseg_clock.c: 53: TMR0 = TIMER_VAL;
	movf	(_TIMER_VAL),w
	movwf	(1)	;volatile
	
i1l30000572:	
	line	54
;sevseg_clock.c: 54: T0IF = 0;
	bcf	(90/8),(90)&7
	
i1l6:	
	movf	(??__isr+5),w
	movwf	btemp+0
	movf	(??__isr+4),w
	movwf	pclath
	movf	(??__isr+3),w
	movwf	fsr0
	movf	(??__isr+2),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of__isr
	__end_of__isr:
; =============== function __isr ends ============

psect	text56,local,class=CODE,delta=2
global __ptext56
__ptext56:
	line	55
	signat	__isr,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
