
main:
	add r0, r0, #1
	cmp r0, #1
	beq next

end:
	b end

next:
	mov r0, #100
	b end

# mov r0, #3

# b hello

# mov r0, #6

# add r0, r0, #4

# sub r0, r0, #10
# hello:
# 	b nello2

# add r0, r0, #3

# nello2:

# 	bl finish

# add r0, r0, #3
# add r0, r0, #100

# sub r0, r0, #50
# finish:
# 	add r0, r0, #1

# mov r0, #2
# b finish
# add r0, r0, #2
# add r0, r0, #2
# sub r0, r0, #2
# finish:
# mov r1, r0
