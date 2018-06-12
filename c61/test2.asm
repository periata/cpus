	;;
	;; test program for function calls and extended opcodes 'mcp', 'ifc'
	;; and extended operand type 'rb', '>ra'
	;;
	;; function calls are performed by using the program counter link register,
	;; r15.  when the program counter r7 is modified, the old value is stored
	;; in the link register. a return can then be performed by copying it back
	;; to r7.
	;;

	mov r0, r6+06h		; 0000 0001 1000 0110 [0186h] r0 <- 06h
	mov r1, r6+05h		; 0000 0011 1000 0101 [0385h] r1 <- 05h
	mov r7, r6+05h		; 0000 1111 1000 0101 [0F85h] r7 <- 05h, r15 <- 03h
	;; return to here with r0 set to 1Eh = 30
	store +r2, r0 + 00h	; 1010 0100 0000 0000 [A400h] [000] <- 1Eh
	sub r7, r6+01h		; 1100 1111 1000 0001 [CF81h] loop back to self

_05:
	mov r3, r0+00h		; 0000 0110 0000 0000 [0600h] r3 <- 06h
	mcp r14, r15		; 1111 1101 1110 0010 [FDE2h] r14 <- 3
	xor r0, r0+00h		; 0110 0000 0000 0000 [6000h] r0 <- 0
_08:
	ifeq r1, r6+00h		; 0100 0011 1000 0000 [4380h] skip
	mcp r7, r14		; 1110 1111 1010 0010 [EFA2h] skipped
	mcp r1, >r1		; 1110 0010 0010 0011 [E223h] r1 <- 02h, c set
	ifc +r4			; 1110 1000 0001 1001 [E819h] no skip, r4=1
	add r0, r3+00h		; 0010 0000 1100 0000 [20C0h] r0 <- 6
	add r3, r3+00h		; 0010 0110 1100 0000 [26C0h] r3 <- 0Ch
	sub r7, r6+07h		; 1100 1111 1000 0111 [CF87h] r7 <- 08h
	;; iter 2: skip, skipped, r1=1;c clear, skip; r4=2, skipped, r3=18h, r7=08h
	;; iter 3: skip, skipped, r1=0;c set, no skip; r4=3, r0=1Eh, r3=30h, r7=08h
	;; iter 4: no skip, r7=03h
	
	
