TITLE TEMPLATE
INCLUDE Irvine32.inc

.data
a sdword 00d, 10d, 20d, 30d,
		 01d, 11d, 21d, 31d,
		 02d, 12d, 22d, 32d,
		 03d, 13d, 23d, 33d
x byte 2d
y byte 2d
z sword -30d

msg1 byte "The value of the element a[2,2] is : ", 0
msg2 byte "The sum a[2,2]+z = : ", 0
msg3 byte "The sum a[2,2]-z = : ", 0

.code
main proc

MOV ESI , 4d; To plhthos twn stoixeiwn se mia grammh
SHL ESI, 1d ;  To plhthos 2 grammwn (1*2)
MOVZX ECX , y ; metafora kai tropopoihsh tou 8bitoy y ston 32bito Ecx
ADD ESI, ECX ; prosthesh 2 grammvn kai 2 stoixwn ara briskomai sto stoixeio a[2,2]
SHL ESI , 2d
add ESI, offset a
MOV EAX , [ESI]
MOV EDX , offset msg1
call WriteString
call WriteInt 
call Crlf

MOVSX EBX , z
ADD EAX, EBX
MOV EDX , offset msg2
call WriteString
call WriteInt 
call Crlf

MOV EAX , [ESI]
SUB EAX, EBX
MOV EDX , offset msg3
call WriteString
call WriteInt 
call Crlf


exit
main endp
END main