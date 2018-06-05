	;;
	;; test program exercising basic instructions
	;;
	;; annotated with expected outputs
	;; 

	MOV r0, r0 + 10h	; 0000 0000 0001 0000 [0010h]  r0=10h
	MOV r1, r1 + 08h        ; 0000 0010 0100 1000 [0248h]  r1=08h
	ADD r0, r0 + 01h 	; 0010 0000 0000 0001 [2001h]  r0=21h
	IFEQ r0, r1 + 00h     	; 0100 0000 0100 0000 [4040h]  10h != 08h => skip
	MOV r2, r2 + 3Fh 	; 0000 0100 1011 1111 [04BFh]  no effect (r2=00h still)
	IFEQ r2, r3 + 00h	; 0100 0100 1100 0000 [44C0h]  00h == 00h => no effect
	MOV r7, r6 + 05h	; 0000 1111 1000 0101 [0F85h]  r7 = 05h, skips
	;; instr 8 is read but abandoned
	;; 5: r2=3Fh
	;; 6: (r2 not updated yet) 00h==00h => no effect
	;; 7: r7=05h
	;; instr 8 is read but abandoned
	;; 5: r2=3Eh
	;; 6: 3Fh!=00h => skip
	;; instr 7 is read but abandoned
	XOR r1, r2 + 09h	; 0110 0010 1000 1001 [6489h]  r1=3E^09=37h
	SUB r0, r6 + 3Dh	; 1100 0001 1011 1101 [C1BDh]  r0=21h-3Dh=24h
	
