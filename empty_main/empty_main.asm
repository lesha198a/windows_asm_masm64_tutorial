includelib msvcrt.lib

option casemap:none

.code
externdef _CRT_INIT:proc
externdef exit:proc

main proc
     call _CRT_INIT
     push rbp
     mov rbp, rsp



    mov ecx, 0
    call exit
main endp

end