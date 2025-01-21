includelib msvcrt.lib

option casemap:none

.code
externdef _CRT_INIT:proc
externdef exit:proc

main proc
    call _CRT_INIT
    push rbp
    mov rbp, rsp

    ; Perform division: result = 50 / 5
    mov eax, 50                  ; Dividend in EAX
    xor edx, edx                 ; Clear EDX (high part of dividend)
    mov ecx, 5                   ; Divisor in ECX
    div ecx                      ; Divide EAX by ECX

    ; Return the result as the exit code
    mov ecx, eax
    call exit

main endp
end
