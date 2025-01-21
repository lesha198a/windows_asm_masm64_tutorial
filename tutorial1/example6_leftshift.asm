includelib msvcrt.lib

option casemap:none

.code
externdef _CRT_INIT:proc
externdef exit:proc

main proc
    call _CRT_INIT
    push rbp
    mov rbp, rsp

    ; Perform left shift: result = 0b0001 << 3
    mov bl, 1                   ; Load 0b0001 into EAX
    shl bl, 3                   ; Shift left by 3 bits

    ; Return the result as the exit code
    ; 01100111 01110001 10100011 11101100
    xor rcx, rcx
    mov ch, bl
    call exit

main endp
end
