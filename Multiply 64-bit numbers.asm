;0x49265CF77AEF9045
MOV AX, 0x4926 
MOV [06556h], AX 

MOV AX, 0x5CF7
MOV [06554h], AX 

MOV AX, 0x7AEF
MOV [06552h], AX 

MOV AX, 0x9045
MOV [06550h], AX   

;0xD64EAAF89A8E0236
MOV AX, 0xD64E 
MOV [0655Eh], AX

MOV AX, 0xAAF8
MOV [0655Ch], AX

MOV AX, 0x9A8E 
MOV [0655Ah], AX 

MOV AX, 0x0236
MOV [06558h], AX  
      
      
; Baris Nisanci 20070001019 Homework1


MOV BX, 06550h
MOV SI, 06558h
MOV DI, 0 
MOV CX, 4     

outer_loop:  ;(i = 4; i > 0; i--)

    
    MOV AX, [BX] 
    
    PUSH CX     
    MOV CX, 4   
    
    PUSH SI
    PUSH DI
    
    inner_loop:  ;(j = 4; j > 0; j--) 
    
        MOV AX, [BX]
        MOV DX, [SI]
        MUL DX ;AX * DX
        
        ADD [0x02000 + DI], AX
        ADC [0x02000 + DI + 2], DX  
        CLC   
        
        ADD SI, 2
        ADD DI, 2
        
        LOOP inner_loop  
      
    ADD BX, 2
     
    POP DI
    ADD DI, 2
    
    POP SI
    POP CX 
  
    LOOP outer_loop   
  
RET    