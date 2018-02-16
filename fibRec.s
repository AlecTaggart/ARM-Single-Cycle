
mov r0, #15 //= 610
mov sp, #128
add sp, sp, sp
add sp, sp, sp

bl fib_rec

done:
	b done

fib_rec:
	sub sp, sp, #4
	str r4, [sp]
	sub sp, sp, #4
	str r5, [sp]
	sub sp, sp, #4
	str lr, [sp]

	cmp r0, #1
	bgt else
	b finish

else:
	mov r4, r0 // store n in r4
	sub r0, r0, #1  //update r0 for n-1
	bl fib_rec //call fib
	mov r5, r0 // store return value from first recursive call
	mov r0, r4 //restore r0 to original n 
	sub r0, r0, #2 //update r0 for n-2
	bl fib_rec //call fib
	add r0, r5, r0 // add recursive results

finish:
	ldr lr, [sp]
	add sp, sp, #4
	ldr r5, [sp]
	add sp, sp, #4
	ldr r4, [sp]
	add sp, sp, #4


	bx lr 



