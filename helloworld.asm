includelib ucrt.lib
includelib legacy_stdio_definitions.lib
includelib msvcrt.lib

option casemap:none

.data
fmtStr byte 'Hello World!', 10, 0

.code
externdef printf:proc
externdef _CRT_INIT:proc
externdef exit:proc

main proc
    call _CRT_INIT
    push rbp
    mov rbp, rsp

    sub rsp, 32
    lea rcx, fmtStr
    call printf

    xor ecx, ecx
    call exit
main endp

end