//Ten hex numbers are stored in RAM locations 50H onwards.Write a program to find the biggest number in the set.The biggest number should finally be saved in 60H.
ORG 0
MOV R0, #50H
MOV R2, #10
MOV A, #0
;------loop
BACK:MOV B, @R0 
CJNE A, B, NEXT
NEXT:
JNC HERE
MOV A, @R0
HERE:INC R0
DJNZ R2, BACK
;loop end
MOV 60H, A
END