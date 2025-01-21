includelib msvcrt.lib

.code
externdef _CRT_INIT:proc
externdef exit:proc

main proc
    call _CRT_INIT               ; Initialize the C runtime
    push rbp                     ; Save the base pointer
    mov rbp, rsp                 ; Set the base pointer

    ; Perform addition: result = 10 + 20
    mov eax, 10                  ; Load 10 into EAX
    add eax, 20                  ; Add 20 to EAX

    ; Return the result as the exit code
    mov ecx, eax                 ; Move the result into ECX (exit code)
    call exit                    ; Exit with the result | void exit(int exitCode)

main endp
end
