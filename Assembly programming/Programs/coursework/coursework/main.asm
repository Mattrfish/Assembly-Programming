; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	; define your variables here
	A DWORD 3,2,3,1,7,5,0,8,9,2
	B DWORD 0,0,0,0,0,0,0,0,0,0

.code ; code segment

main PROC ; main procedure
	; write your assembly code here
	lea ebx, A
	mov esi, 0
	
update:
	; (3*i + 1)/5
	mov eax, 3 ; moves 3 into eax
	imul eax, esi ; multiplies i by eax
	add eax, 1 ; adds 1 to eax
	mov ecx, 5
	div ecx
	

	

	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling