.global lab1
.syntax unified

//(a-b)*3 + 2^c


#define a #15
#define b #10
#define c #0

lab1:
	push {lr}
	mov r0, a
	mov r1, b
	mov r2, c
	mov r3, #3
	mov r4, #2
	mov r5, r4
	
	sub r0, r1
	mul r0, r3
	
	cmp r2, 0
	beq power0
	
	power:
		cmp r2, #1
		beq sum
		mul r4, r5
		sub r2, #1
		bne power
		
	power0:
		mov r4, #1
		bne sum
		
	sum:
		add r0, r4
		pop {pc}
		
