01 WS-CUSTOMER-NAME PIC X(50).

PROCEDURE DIVISION.

    DISPLAY "Enter customer name:"
    ACCEPT WS-CUSTOMER-NAME

    IF LENGTH OF WS-CUSTOMER-NAME > 50 THEN
        DISPLAY "Customer name is too long. Maximum length is 50 characters."
        MOVE WS-CUSTOMER-NAME(1:50) TO WS-CUSTOMER-NAME
    END-IF.

    IF WS-CUSTOMER-NAME = SPACES THEN
        DISPLAY "Customer name is missing."
        STOP RUN.
    END-IF.

    DISPLAY "Customer name: " WS-CUSTOMER-NAME
    STOP RUN.