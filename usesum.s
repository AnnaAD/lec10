	.intel_syntax noprefix
	
	.section .data
	#  a place for us to store how much data is in the XARRAY
	#  initalized it to 0
XARRAY_LEN:
	.quad 0x5
sum:
	.quad 0x0
	# reserve enough space for 1024 8 byte values
	#  third argument is alignment.... turns out cpu
	#  cpu is more efficient if things are located at address
	#  of a particular 'alignment (see intel manual)
	.comm XARRAY, 8*5, 8 

	.section .text
	.global _start 
_start:
	mov rbx, QWORD PTR [XARRAY_LEN]

	jmp sumIt
	mov QWORD PTR [sum], rax

	int3
    
