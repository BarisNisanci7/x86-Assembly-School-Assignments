;BARIS NISANCI 20070001019 

MOV CX, 10      ;int n
CALL fibonacci: ;fibonacci(n)
RET

fibonacci PROC  ;int fibonacci(int n)  
                       
    CMP CX, 1       ;if(n == 1)
    JZ returnOne    ;return 1
    
    CMP CX, 0       ;if(n == 0)
    JZ returnZero   ;return 0
      
    PUSH CX
    DEC CX          
    CALL fibonacci  ;fibonacci(n - 1)
     
    POP CX
    MOV BX, AX
    PUSH BX
    SUB CX, 2
    
    CALL fibonacci  ;fibonacci(n - 2)
    
    POP BX
    ADD BX, AX      ;fibonacci(n - 1) + fibonacci(n - 2)
    MOV AX, BX
    RET
   
    returnOne:
    MOV AX, 1
    RET
    
    returnZero:
    MOV AX, 0
    RET

fibonacci ENDP



