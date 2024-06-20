MOV AX,0200H
MOV DS,AX
;Print string at address DS:DI    
;6f6c61746c
MOV [DI],6fH
MOV [DI+1],6cH
MOV [DI+2],61H
MOV [DI+3],74H
MOV [DI+4],6cH
MOV [DI+5],"$";Put this string at the end of the string   
      
MOV CX, 5
    
; Baris Nisanci 20070001019
    
outer_loop:
    MOV DI, 0; j = 0
    INC DI; j++
    MOV BX, CX
    DEC BX  
    
inner_loop:
    MOV AL, [DI]; array[j]
    CMP AL, [DI-1]; array[j] >= array[j-1]
    JB next;
    MOV DL, [DI]; temp = array[j]
    MOV DH, [DI-1]; array[j] = array[j-1]
    MOV [DI-1], DL; array[j-1] = temp
    MOV [DI], DH
    
next:
    INC DI; j++ 
    DEC BX
    JB BX, CX, inner_loop
    DEC CX
    JNZ outer_loop
     
     
MOV AH, 09H
MOV DX, 0
INT 21H
    

;Exit program
MOV AH,4CH
INT 21H  
