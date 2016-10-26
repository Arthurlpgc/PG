#include <GLFW/glfw3.h>
#include <bits/stdc++.h>
using namespace std;

//points calculation
#define PX first
#define PY second 
typedef pair<double,double> pt;
pt FindBezierPt(vector<pt> v,double t){
	while(v.size()>1){
		for(int i=0;i<v.size()-1;i++){
			v[i]=(make_pair(v[i].PX*t+v[i+1].PX*(1-t),v[i].PY*t+v[i+1].PY*(1-t)));
		}
		v.pop_back();
	}
	return v[0];
}
vector<pt> Casteljau(vector<pt> v,int numPoints){
	assert(numPoints>1);
	vector<pt> ret;
	for(int i=0;i<numPoints;i++){
		ret.push_back(FindBezierPt(v,double(i)/double(numPoints-1)));
	}
	return ret;
}

//Global variables
vector<pt> ControlPoints,BezierCurve;
int SelectedPoint;
double StartingX,StartingY;

//events
void mbpressed(GLFWwindow* window, int button, int action, int mods){
	double xpos, ypos;
	glfwGetCursorPos(window, &xpos, &ypos);
	if(xpos<480){//if on screen area
	    if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS){
	    	//point drag
	        for(int i=0;i<ControlPoints.size();i++){
				if(pow(fabs(xpos-ControlPoints[i].first),2)+pow(fabs(ypos-ControlPoints[i].second),2)<3){
					SelectedPoint=i;
					StartingX=xpos;
					StartingY=ypos;
					return;
				}        	
	        }
	        //point creation on line
	        //point creation at the end
	        ControlPoints.push_back(make_pair(xpos,ypos));
	        BezierCurve=Casteljau(ControlPoints,100);
	    }else {
	    	if(~SelectedPoint&&fabs(xpos-StartingX)+fabs(ypos-StartingY)<8){
	    		ControlPoints.erase(ControlPoints.begin()+SelectedPoint);
	    		BezierCurve=Casteljau(ControlPoints,100);
	    	}
	    	SelectedPoint=-1;
	    }
	}else{//if on panel area

	}
}
void mmove(GLFWwindow* window, double xpos, double ypos){
	if(~SelectedPoint){
		ControlPoints[SelectedPoint].first=xpos;
		ControlPoints[SelectedPoint].second=ypos;
		BezierCurve=Casteljau(ControlPoints,100);
	}
}

//drawing methods
void makeLines(vector<pt> v){
	for(int i=1;i<v.size();i++){
    	glBegin(GL_LINES);
			glVertex2f(float(v[i].first/360.0-1.0),float(-v[i].second/240.0+1.0));
			glVertex2f(float(v[i-1].first/360.0-1.0), float(-v[i-1].second/240.0+1.0));
		glEnd();
    }
}

//main
int main(void){	
	SelectedPoint=-1;
    GLFWwindow* window;
    if (!glfwInit())return -1;//glfw starting
    window = glfwCreateWindow(720, 480, "P3.1", NULL, NULL);//window startup
    if (!window){
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);//TODO understand me before commenting
    glfwSetMouseButtonCallback(window, mbpressed);//setting callback for mouse button
    glfwSetCursorPosCallback(window, mmove);//setting callback for mouse move
    while (!glfwWindowShouldClose(window)){//render loop
        glClearColor(0.1f, 0.1f, 0.2f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        glColor3f(0, 0, 0.10);
        glRectf(0.3333,-1.0,1.0,1.0);
        glLineWidth(0.5);
		glColor3f(1.0, 1.0, 1.0);
        makeLines(BezierCurve);
        glLineWidth(1.5);
        glColor3f(0.0, 1.0, 1.0);
        makeLines(ControlPoints);
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
    glfwTerminate();
    return 0;
}
