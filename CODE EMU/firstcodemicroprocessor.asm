.MODEL SMALL
.DATA
.STACK 100
 MSG DB 'ENTER A BALSAL $'
.CODE
MAIN PROC
   MOV AX,@DATA
   MOV DS,AX
   
   MOV AH,9 
  
   LEA DX,MSG
   INT 21H
  
   
    
    MOV AH,1
    MOV BL,AL
    INT 21H
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
     
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
      MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,1
    INT 21H 
    MOV DL,AL
    ADD DL,32
    MOV AH,2
    INT 21H
    
     MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
     
    MOV AH,1
    INT 21H 
    MOV DL,AL
    SUB DL,32
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN