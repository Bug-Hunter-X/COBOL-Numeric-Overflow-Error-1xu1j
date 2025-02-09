01  WS-AMOUNT PIC 9(5)V99 VALUE ZEROES.
01  WS-PRICE PIC 9(5)V99 VALUE ZEROES.
01  WS-DISCOUNT PIC 9(5)V99 VALUE ZEROES.
01 WS-ERROR-FLAG PIC 9 VALUE 0.

IF WS-DISCOUNT > WS-PRICE THEN
    MOVE 1 TO WS-ERROR-FLAG
    DISPLAY "Error: Discount exceeds price."
ELSE
    SUBTRACT WS-DISCOUNT FROM WS-PRICE GIVING WS-AMOUNT
END-IF.

*In this corrected example, the code now includes error handling using an IF statement.  It checks if the discount exceeds the price, preventing negative values in WS-AMOUNT. If an error is detected, it sets an error flag and displays an informative message. This approach allows you to handle the potential error gracefully instead of letting the program crash.