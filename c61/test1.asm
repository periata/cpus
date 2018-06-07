	;;
	;; test program exercising basic instructions
	;;
	;; annotated with expected outputs
	;; 

	MOV r0, r0 + 10h	; 0000 0000 0001 0000 [0010h]  r0=10h
	MOV r1, r1 + 08h        ; 0000 0010 0100 1000 [0248h]  r1=08h
	ADD r0, r0 + 01h 	; 0010 0000 0000 0001 [2001h]  r0=21h
	IFEQ r0, r1 + 00h     	; 0100 0000 0100 0000 [4040h]  10h != 08h => skip
_04:	
	MOV r2, r2 + 3Fh 	; 0000 0100 1011 1111 [04BFh]  no effect (r2=00h still)
	IFEQ r2, r3 + 00h	; 0100 0100 1100 0000 [44C0h]  00h == 00h => no effect
	MOV r7, r6 + 04h	; 0000 1111 1000 0100 [0F84h]  r7 = 04h, skips
	;; instr 7 is read but abandoned
	;; 4: r2=3Fh
	;; 5: (r2 not updated yet) 00h==00h => no effect
	;; 6: r7=05h
	;; instr 7 is read but abandoned
	;; 4: r2=3Eh
	;; 5: 3Fh!=00h => skip
	;; instr 6 is read but abandoned
_07:	
	XOR r1, r2 + 09h	; 0110 0010 1000 1011 [628Bh]  r1=08^(3E+0B)=01h
	XOR r0, r0 + 00h	; 0110 0000 0000 0000 [6000h]  r0=00h
	
	MOV r9, r3 + 11h	; 0001 0010 1101 0001 [12D1h]  r9=11h
	MOV r0, r0 + 00h	; 0000 0000 0000 0000 [0000h]  no change
_0B:	
	STORE +r0, r1 + 00h	; 1010 0000 0100 0000 [A040h]  [000]=01h, r0=01h
	SUB r9, r6 + 01h	; 1101 0011 1000 0001 [D381h]  r9=10h
	ADD r1, r0 + 00h	; 0010 0010 0000 0000 [2200h]  r1=02h
	IFEQ r9, r6 + 3Fh	; 0101 0011 1011 1111 [53BFh]  r9 != 3Fh => skip
	MOV r7, r6 + 11h 	; 0000 1111 1001 0001 [0F91h]  r7=11h (skipped)
	SUB r7, r6 + 06h	; 1100 1111 1000 0110 [CF86h]  r7=11h-06h=0Bh (skip next)
	;; next iteration: [001]=02h, r0=02h, r9=0Fh, r1=04h, skip, skipped, r7=0Bh
	;; next iteration: [002]=04h, r0=03h, r9=0Eh, r1=07h, skip, skipped, r7=0Bh
	;; next iteration: [003]=07h, r0=04h, r9=0Dh, r1=0Bh, skip, skipped, r7=0Bh
	;; next iteration: [004]=0Bh, r0=05h, r9=0Ch, r1=10h, skip, skipped, r7=0Bh
	;; next iteration: [005]=10h, r0=06h, r9=0Bh, r1=16h, skip, skipped, r7=0Bh
	;; next iteration: [006]=16h, r0=07h, r9=0Ah, r1=1Dh, skip, skipped, r7=0Bh
	;; next iteration: [007]=1Dh, r0=08h, r9=09h, r1=25h, skip, skipped, r7=0Bh
	;; next iteration: [008]=25h, r0=09h, r9=08h, r1=2Eh, skip, skipped, r7=0Bh
	;; next iteration: [009]=2Eh, r0=0Ah, r9=07h, r1=38h, skip, skipped, r7=0Bh
	;; next iteration: [00A]=38h, r0=0Bh, r9=06h, r1=03h, skip, skipped, r7=0Bh
	;; next iteration: [00B]=03h, r0=0Ch, r9=05h, r1=0Fh, skip, skipped, r7=0Bh
	;; next iteration: [00C]=0Fh, r0=0Dh, r9=04h, r1=1Ch, skip, skipped, r7=0Bh
	;; next iteration: [00D]=1Ch, r0=0Eh, r9=03h, r1=2Ah, skip, skipped, r7=0Bh
	;; next iteration: [00E]=2Ah, r0=0Fh, r9=02h, r1=39h, skip, skipped, r7=0Bh
	;; next iteration: [00F]=39h, r0=10h, r9=01h, r1=09h, skip, skipped, r7=0Bh
	;; next iteration: [010]=09h, r0=11h, r9=00h, r1=1Ah, skip, skipped, r7=0Bh
	;; next iteration: [011]=1Ah, r0=12h, r9=3Fh, r1=2Ch, no skip, r7=11h	
_11:	
	MOV r8, r6 + 01h	; 0001 0001 1000 0001 [1181h]  r8=01h
	LOAD r4, [r6 + 00h]	; 1000 1001 1000 0000 [8980h]  r4=[000]=01h
	LOAD r5, [r6 + 01h]	; 1000 1011 1000 0001 [8B81h]  r5=[011]=1Ah
	MOV r0, r0 + 00h	; 0000 0000 0000 0000 [0000h]  no change
	ADD r4, r5 + 00h	; 0010 1001 0100 0000 [2940h]  r4=1Bh
	
