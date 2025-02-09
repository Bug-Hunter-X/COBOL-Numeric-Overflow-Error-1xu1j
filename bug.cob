01  WS-AMOUNT PIC 9(5)V99 VALUE ZEROES.

* In this example, WS-AMOUNT is declared as a numeric field with a picture clause of 9(5)V99. This means it can hold a value up to 99999.99.  However, if the program attempts to store a value larger than 99999.99 in WS-AMOUNT (e.g., due to an incorrect calculation or input), it will lead to a data exception or overflow error.  The specific error message will depend on the COBOL compiler and runtime environment.

SUBTRACT WS-DISCOUNT FROM WS-PRICE GIVING WS-AMOUNT

*If WS-DISCOUNT is larger than WS-PRICE, it will lead to negative value in WS-AMOUNT. To handle this scenario, you could add a check before the subtraction: