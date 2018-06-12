	;; 
	;; test3.asm - tests for remaining extensions instructions
	;;
	;; ok, I admit it - I can't think of a useful program that needs these.
	;; I'm just going to write random shit to test them with.
	;;

	ldc r0, 0Fh		; 1110 0000 0000 1111 [E00F] r0 <- 0fh
	ldc r1, 07h		; 1110 0010 0000 0111 [E207] r1 <- 07h
	mcp r0, +r0		; 1110 0000 0010 0001 [E021] r0 <- 10h
	ldc r9, 03h		; 1111 0010 0000 0011 [F203] r9 <- 03h
	ldc r10, 01h		; 1111 0100 0000 0001 [F401] r10 <- 01h
	mor r0, r9		; 1110 0000 0110 1010 [E06A] r0 <- 13h
	nan r1, r10		; 1110 0010 1011 0110 [E2B6] r1 <- 3Eh
	ldc r9, 01h		; 1111 0010 0000 0001 [F201] r9 <- 01h
	nor r1, r10		; 1110 0010 1011 1010 [E2BA] r1 <- 00h
	man r0, r9		; 1110 0000 0110 0110 [E066] r0 <- 01h
	ncp r1, +r1		; 1110 0010 0011 0001 [E231] r1 <- 3Eh
	msb r0, r9		; 1110 0000 0110 1110 [E06E] r0 <- 00h
	
