void DBG_checkDisplay(char TestDigit)
{
	PORTB = TestDigit;
	SEG_6;
	Delay(2);
	PORTB = TestDigit;
	SEG_5;
	Delay(2);
	PORTB = TestDigit;
	SEG_4;
	Delay(2);
	PORTB = TestDigit;
	SEG_3;
	Delay(2);
	PORTB = TestDigit;
	SEG_2;
	Delay(2);
	PORTB = TestDigit;
	SEG_1;
	Delay(2);
}