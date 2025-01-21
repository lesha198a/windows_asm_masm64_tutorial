includelib msvcrt.lib

option casemap:none

.code
externdef _CRT_INIT:proc
externdef exit:proc

main proc
    call _CRT_INIT
    push rbp
    mov rbp, rsp

    ; Perform bitwise AND: result = 0b1101 & 0b1011
    mov eax, 1101b                 ; Load 0b1101 into EAX
    and eax, 1011b                 ; Perform AND with 0b1011

    ; Return the result as the exit code
    mov ecx, eax
    call exit

main endp
end
