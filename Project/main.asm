TITLE MASM Template						(main.asm)

INCLUDE Irvine32.inc
.data
Answer DWORD 1234d
ADMIN DWORD 9876d
Password DWORD ?
Msg1 BYTE "Enter Password",0
Msg2 BYTE "Correct Password",0
Msg3 BYTE "Input new Key",0
Msg4 BYTE "Incorrect Password",0
Msg5 BYTE "Too many failed attempts, please input admin password",0
Msg6 BYTE "Output 1, which will activate the IC to turn the motor on",0

.code
main PROC
	
	L1:
		mov ecx, 3

	L2:
		mov edx,offset Msg1
		Call WriteString
		Call crlf
		Call ReadInt
		mov Password, eax
		mov eax,ADMIN
		cmp eax,Password
		je L3
		mov eax, Answer      
		cmp eax, Password
		je L6
		jmp L4

	L3:
		mov edx, offset Msg3
		Call WriteString
		Call crlf
		Call ReadInt
		mov Answer,eax
		jmp L1

	L4:
		mov edx, offset Msg4
		Call WriteString
		Call crlf
		Loop L2

	L5:
		mov edx, offset Msg5
		Call WriteString
		Call crlf
		Call ReadInt
		mov Password, eax
		mov eax,ADMIN
		cmp eax, Password
		je L1
		jmp L5

	L6:
		mov edx, offset Msg2
		Call WriteString
		Call crlf
		mov edx,offset Msg6
		Call WriteString
		Call crlf
	
	exit
main ENDP

END main