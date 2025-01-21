cmake_minimum_required(VERSION 3.15)

project(HelloWorldASM LANGUAGES C ASM_MASM)
add_executable(helloworld helloworld.asm)

set(CMAKE_ASM_MASM_COMPILER "ml64")

set(CMAKE_ASM_MASM_LINK_EXECUTABLE
        "<CMAKE_C_COMPILER> <OBJECTS> -o <TARGET> <LINK_LIBRARIES> <LINK_FLAGS>"
)


target_link_options(helloworld PRIVATE
        /SUBSYSTEM:CONSOLE
)

target_link_libraries(helloworld PRIVATE
        legacy_stdio_definitions.lib
        msvcrt.lib
        ucrt.lib
)

add_subdirectory(empty_main)
add_subdirectory(tutorial1)
