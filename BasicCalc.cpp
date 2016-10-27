#include <GLFW/glfw3.h>
#include <bits/stdc++.h>
using namespace std;
typedef pair<double,double> pt;

//Global variables
vector<pt> ControlPoints,BezierCurve;
int SelectedPoint;
double StartingX,StartingY;

//conversion methods
double screenY=520,screenX=720;
double clcy(double y){
	return (screenY/2-y)/double(screenY/2);
}
double clcx(double x){
	return (x-screenX/2)/double(screenX/2);
}

//geom calculation
#define PX first
#define PY second 
pt FindBezierPt(vector<pt> v,double t){
	if(v.empty())return make_pair(0,0);
	while(v.size()>1){
		for(int i=0;i<v.size()-1;i++){
			v[i]=(make_pair(v[i].PX*t+v[i+1].PX*(1-t),v[i].PY*t+v[i+1].PY*(1-t)));
		}
		v.pop_back();
	}
	return v[0];
}
void Casteljau(vector<pt> v,int numPoints){
	BezierCurve.clear();
	for(int i=0;i<numPoints;i++){
		BezierCurve.push_back(FindBezierPt(v,double(i)/double(numPoints-1)));
	}
}
double PTdistance(pt a,pt b){
	return sqrt((a.PX-b.PX)*(a.PX-b.PX)+(a.PY-b.PY)*(a.PY-b.PY));
}
bool PointInSegment(pt a,pt b,pt c){
	return (PTdistance(a,b)+PTdistance(b,c))/PTdistance(a,c)<1.001;
}
void processHub(vector<pt> v,int numPoints){
	
	Casteljau(v,numPoints);
}

//events
void mbpressed(GLFWwindow* window, int button, int action, int mods){
	double xpos, ypos;
	glfwGetCursorPos(window, &xpos, &ypos);
	if(xpos<480&&ypos<480){//if on screen area
	    if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS){
	    	//point drag
	        for(int i=0;i<ControlPoints.size();i++){
				if(pow(fabs(xpos-ControlPoints[i].first),2)+pow(fabs(ypos-ControlPoints[i].second),2)<4){
					SelectedPoint=i;
					StartingX=xpos;
					StartingY=ypos;
					return;
				}        	
	        }
	        //point creation on line
	        pt aux=make_pair(xpos,ypos);
	        for(int i=1;i<ControlPoints.size();i++){
				if(PointInSegment(ControlPoints[i-1],aux,ControlPoints[i])){
					ControlPoints.push_back(aux);
					for(int j=ControlPoints.size()-1;j>i;j--){
						swap(ControlPoints[j],ControlPoints[j-1]);
					}
					StartingY=-1000000;
					SelectedPoint=i;
					return;
				}        	
	        }
	        //point creation at the end
	        ControlPoints.push_back(make_pair(xpos,ypos));
	        processHub(ControlPoints,1000);
	    }else {
	    	if(~SelectedPoint&&fabs(xpos-StartingX)+fabs(ypos-StartingY)<8){
	    		ControlPoints.erase(ControlPoints.begin()+SelectedPoint);
	    		processHub(ControlPoints,1000);
	    	}
	    	SelectedPoint=-1;
	    }
	}else{//if on panel area
		if(button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS&&xpos>500&&xpos<700&&ypos>420&&ypos<460){
			ControlPoints.clear();
			BezierCurve.clear();
		}else if(button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_RELEASE){
	    	if(~SelectedPoint&&fabs(xpos-StartingX)+fabs(ypos-StartingY)<8){
	    		ControlPoints.erase(ControlPoints.begin()+SelectedPoint);
	    		processHub(ControlPoints,1000);
	    	}
	    	SelectedPoint=-1;
		}
	}
}
void mmove(GLFWwindow* window, double xpos, double ypos){
	if(~SelectedPoint){
		ControlPoints[SelectedPoint].first=max(0.0,min(xpos,480.0));
		ControlPoints[SelectedPoint].second=max(0.0,min(ypos,480.0));
		processHub(ControlPoints,100);
	}
}

//drawing methods
void makeLines(vector<pt> v){
	for(int i=1;i<v.size();i++){
    	glBegin(GL_LINES);
			glVertex2f(clcx(v[i].first),clcy(v[i].second));
			glVertex2f(clcx(v[i-1].first),clcy(v[i-1].second));
		glEnd();
    }
}

//main
int main(void){	
	SelectedPoint=-1;
    GLFWwindow* window;
    if (!glfwInit())return -1;//glfw starting
    window = glfwCreateWindow(720, 520, "P3.1", NULL, NULL);//window startup
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
        //panel
        glColor3f(0.04, 0.04, 0.14);
        glRectf(clcx(480),clcy(0),clcx(720),clcy(480));
        
        glColor3f(0.1, 0.1, 0.17);
        glRectf(clcx(0),clcy(480),clcx(720),clcy(520));
        glColor3f(0.08, 0.08, 0.15);
        glRectf(clcx(0),clcy(480),clcx(720),clcy(481));
        glColor3f(0.06, 0.06, 0.13);
        glRectf(clcx(20),clcy(495),clcx(700),clcy(505));


        glColor3f(0, 0.1, 0.10);
        glRectf(clcx(500),clcy(420),clcx(700),clcy(460));

        glLineWidth(1.5);
        glColor3f(0.8, 0.8, 0.8);
        makeLines(ControlPoints);
        glLineWidth(0.5);
		glColor3f(1.0, 1.0, 1.0);
        makeLines(BezierCurve);
        
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
    glfwTerminate();
    return 0;
}
