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
vector<pt> cntline,BezierCurve;
int pivotCp;
bool delta;

//events
void mbpressed(GLFWwindow* window, int button, int action, int mods){
	double xpos, ypos;
	glfwGetCursorPos(window, &xpos, &ypos);
    if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS){
    	//point drag
        for(int i=0;i<cntline.size();i++){
			if(pow(fabs(xpos-cntline[i].first),2)+pow(fabs(ypos-cntline[i].second),2)<3){
				pivotCp=i;
				delta=0;
				return;
			}        	
        }
        //point creation on line
        //point creation at the end
        cntline.push_back(make_pair(xpos,ypos));
        BezierCurve=Casteljau(cntline,100);
    }else {
    	if(~pivotCp&&delta==0){
    		cntline.erase(cntline.begin()+pivotCp);
    		BezierCurve=Casteljau(cntline,100);
    	}
    	pivotCp=-1;
    }
}
void mmove(GLFWwindow* window, double xpos, double ypos){
	if(~pivotCp){
		cntline[pivotCp].first=xpos;
		cntline[pivotCp].second=ypos;
		delta=1;
		BezierCurve=Casteljau(cntline,100);
	}
}

//drawing methods
void makeLines(vector<pt> v){
	for(int i=1;i<v.size();i++){
    	glBegin(GL_LINES);
			glVertex2f(float(v[i].first/320.0-1.0),float(-v[i].second/240.0+1.0));
			glVertex2f(float(v[i-1].first/320.0-1.0), float(-v[i-1].second/240.0+1.0));
		glEnd();
    }
}

//main
int main(void){	
	pivotCp=-1;
    GLFWwindow* window;
    if (!glfwInit())return -1;//glfw starting
    window = glfwCreateWindow(640, 480, "Hello World", NULL, NULL);//window startup
    if (!window){
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);//TODO understand me before commenting
    glfwSetMouseButtonCallback(window, mbpressed);//setting callback for mouse button
    glfwSetCursorPosCallback(window, mmove);//setting callback for mouse move
    while (!glfwWindowShouldClose(window)){//render loop
        glClearColor(0.0f, 0.0f, 0.2f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        glLineWidth(0.5);
		glColor3f(1.0, 1.0, 1.0);
        makeLines(BezierCurve);
        glLineWidth(1.5);
        glColor3f(0.0, 1.0, 1.0);
        makeLines(cntline);
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
    glfwTerminate();
    return 0;
}
