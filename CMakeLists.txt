cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project(hello)

message(STATUS "OS: ${CMAKE_SYSTEM_NAME}")
message(STATUS "Compile with static library? ${USE_STATIC}")
add_executable(hello hello.c)
add_library(message_objs
    OBJECT
     lib/hello.h
     lib/hello.cpp
)
target_compile_options(message_objs 
    PRIVATE
        -Wall -fPIC
)

add_library(message-so
    SHARED 
        $<TARGET_OBJECTS:message_objs>
)

target_link_libraries(hello message-so)