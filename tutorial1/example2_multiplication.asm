includelib msvcrt.lib

option casemap:none

.code
externdef _CRT_INIT:proc
externdef exit:proc

main proc
    call _CRT_INIT
    push rbp
    mov rbp, rsp

    ; Perform multiplication: result = 6 * 7
    mov eax, 6                   ; Load 6 into EAX
    mov ecx, 7                   ; Load 7 into ECX
    imul eax, ecx                ; Multiply EAX by ECX

    ; Return the result as the exit code
    mov ecx, eax
    call exit

main endp
end
