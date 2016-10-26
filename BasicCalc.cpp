#include <GLFW/glfw3.h>
#include <bits/stdc++.h>
using namespace std;
void mbpressed(GLFWwindow* window, int button, int action, int mods){
	double xpos, ypos;
	glfwGetCursorPos(window, &xpos, &ypos);
    if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS)
        cout<<xpos<<","<<ypos<<endl<<flush;
}
int main(void){	
    GLFWwindow* window;
    if (!glfwInit())return -1;//glfw starting
    window = glfwCreateWindow(640, 480, "Hello World", NULL, NULL);//window startup
    if (!window){
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);//TODO understand me before commenting
    glfwSetMouseButtonCallback(window, mbpressed);//setting callback for mouse
    while (!glfwWindowShouldClose(window)){//render loop
        glClear(GL_COLOR_BUFFER_BIT);
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
    glfwTerminate();
    return 0;
}
