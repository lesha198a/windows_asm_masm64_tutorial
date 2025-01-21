includelib msvcrt.lib

option casemap:none

.code
externdef _CRT_INIT:proc
externdef exit:proc

main proc
     call _CRT_INIT
     push rbp
     mov rbp, rsp

; Calculate and return y
; y = (x * 11 - 7) << 1
; assume x = 3

    mov ecx, 0
    call exit
main endp

end