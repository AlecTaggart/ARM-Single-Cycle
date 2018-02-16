

mov sp, #128
add sp, sp, sp
add sp, sp, sp

sub sp, sp, #4
mov r0, #6
str r0, [sp]
sub sp, sp, #4
mov r0, #7
str r0, [sp]
sub sp, sp, #4
mov r0, #8
str r0, [sp]
sub sp, sp, #4
mov r0, #9
str r0, [sp] 
sub sp, sp, #4
mov r0, #10
str r0, [sp]

mov r0, sp
mov r1, #5

bl sum_array

done:
        b done


sum_array:
        mov r2, #0 //i
        mov r3, r0 //array memory address
        mov r4, #0 //sum
        loop:
                cmp r2, r1
                bge finish
                ldr r5, [r3] //storing array value inside r5
                add r4, r4, r5
                add r2, r2, #1
                add r3, r3, #4
                b loop
        finish:
        mov r0, r4
        bx lr
