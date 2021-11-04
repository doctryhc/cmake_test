#include <iostream>

class HelloWorld {
    public: 
        HelloWorld(){}
    void say() {
        std::cout << "Hello Guys!" << std::endl;
    }
};

extern "C" void sayHello() {
    HelloWorld h;
    h.say();
}