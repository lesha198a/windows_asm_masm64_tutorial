cmake_minimum_required(VERSION 3.15)


project(HelloWorldASM LANGUAGES ASM_MASM)
add_executable(helloworld helloworld.asm)

project(dummyCApp LANGUAGES C) # to get CMAKE_C_COMPILER variable
add_executable(dummyCApp main.c)

get_filename_component(COMPILER_DIR "${CMAKE_C_COMPILER}" DIRECTORY)
set(CMAKE_ASM_MASM_COMPILER "${COMPILER_DIR}/ml64.exe")

set(CMAKE_ASM_MASM_LINK_EXECUTABLE
        "\"${COMPILER_DIR}/link.exe\" <FLAGS> <CMAKE_ASM_MASM_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> /OUT:<TARGET> <LINK_LIBRARIES>")


target_link_options(helloworld PRIVATE
        /SUBSYSTEM:CONSOLE
)

set(UCRT_LIB_PATH "$ENV{WindowsSdkDir}/Lib/$ENV{WindowsSdkVersion}/ucrt/x64/ucrt.lib")
target_link_libraries(helloworld PRIVATE
        "${COMPILER_DIR}/../../../lib/x64/legacy_stdio_definitions.lib"
        "${COMPILER_DIR}/../../../lib/x64/msvcrt.lib"
        "${UCRT_LIB_PATH}"
)

add_subdirectory(asm)
