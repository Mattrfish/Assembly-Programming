; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	; define your variables here
	A BYTE 3,2,3,1,7,5,0,8,9,2
	B BYTE 0,0,0,0,0,0,0,0,0,0

.code ; code segment

main PROC ; main procedure
	; write your assembly code here
	lea ebx, A
	mov esi, 0
	
update:
	; (3*i + 1)/5
	mov eax, 3 ; moves 3 into eax
	mul esi ; multiplies i by eax
	add eax, 1 ; adds 1 to eax
	mov ecx, 5 ; moves 5 into ecx
	div ecx ; divs eax by 5
	mov ecx, eax ; moves eax into ecx 

	; (2*i + ecx)
	mov eax, 2 ; moves 2 into eax
	mul esi ;multiplies i bys esi
	add eax, ecx ; adds ecx to eax
	
	; 2*eax
	mov ecx, 2 ; moves 2 into ecx
	mul ecx ; multiplies 2 by eax

	;B[i] = A[i] + eax
	mov ecx, [ebx + TYPE A * esi] ; moves i position of array into ecx
	add eax, ecx ; adds ecx to eax
	mov [ebx + TYPE B * esi], eax ; moves eax into the i position of B array in ebx
	
	

	inc esi; 
	cmp esi, 10
	jne update ; end or start of loop
	

	

	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling