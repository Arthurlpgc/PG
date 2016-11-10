#include <GLFW/glfw3.h>
#include <bits/stdc++.h>
using namespace std;
typedef pair<double,double> pt;

//Global variables
vector<pt> ControlPoints,BezierCurve;vector<vector<pt> > BezierCurves;
int SelectedPoint,ParaCnt;
double StartingX,StartingY;
vector<double> Parameters;
int SelSlider=-1;double MaxSliderX,MinSliderX;
bool closeCurve=false;
float distTol=8;
bool hideBez=0,hideCp=0,bezC2=1,bezC1=0;

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
pt multpt(pt a,double x){
	pt b;
	b.first=a.first*x;
	b.second=a.second*x;
	return b;
}
pt sumpt(pt a,pt b){
	return make_pair(a.first+b.first,a.second+b.second);
}
vector<pt> cubicBsplinesCLines(vector<pt> v){
	vector<pt> ret;int sz=v.size();
	ret.push_back(v[0]);
	ret.push_back(v[1]);
	ret.push_back(sumpt(multpt(v[1],Parameters[0]/(Parameters[0]+Parameters[1])),multpt(v[2],Parameters[1]/(Parameters[0]+Parameters[1]))));
	for(int i=2;i<sz-3;i++){
		pt aux=sumpt(multpt(v[i],1-Parameters[(i-2)%Parameters.size()]/(Parameters[(i-2)%Parameters.size()]+Parameters[(i-1)%Parameters.size()]+Parameters[(i)%Parameters.size()])),multpt(v[i+1],(Parameters[(i-2)%Parameters.size()]/(Parameters[(i-2)%Parameters.size()]+Parameters[(i-1)%Parameters.size()]+Parameters[i%Parameters.size()]))));
		ret.push_back(sumpt(multpt(aux,Parameters[(i-2)%Parameters.size()]/(Parameters[(i-2)%Parameters.size()]+Parameters[(i-1)%Parameters.size()])),multpt(ret[ret.size()-1],Parameters[(i-1)%Parameters.size()]/(Parameters[(i-2)%Parameters.size()]+Parameters[(i-1)%Parameters.size()]))));
		ret.push_back(aux);
		ret.push_back(sumpt(multpt(v[i],Parameters[(i)%Parameters.size()]/(Parameters[(i-2)%Parameters.size()]+Parameters[(i-1)%Parameters.size()]+Parameters[(i)%Parameters.size()])),multpt(v[i+1],1-(Parameters[(i)%Parameters.size()]/(Parameters[(i-2)%Parameters.size()]+Parameters[(i-1)%Parameters.size()]+Parameters[(i)%Parameters.size()])))));
	}
	pt aux=sumpt(multpt(v[sz-3],Parameters[(sz-5)%Parameters.size()]/(Parameters[(sz-4)%Parameters.size()]+Parameters[(sz-5)%Parameters.size()])),multpt(v[sz-2],Parameters[(sz-4)%Parameters.size()]/(Parameters[(sz-4)%Parameters.size()]+Parameters[(sz-5)])));
	ret.push_back(sumpt(multpt(aux,Parameters[(sz-5)%Parameters.size()]/(Parameters[(sz-5)%Parameters.size()]+Parameters[(sz-4)%Parameters.size()])),multpt(ret[ret.size()-1],Parameters[(sz-4)%Parameters.size()]/(Parameters[(sz-5)%Parameters.size()]+Parameters[(sz-4)%Parameters.size()]))));
	ret.push_back(aux);
	ret.push_back(v[sz-2]);
	ret.push_back(v[sz-1]);
	return ret;
}
void processHub(vector<pt> v,int numPoints){
	if(!bezC2){
		Parameters.clear();
		BezierCurves.clear();
		Casteljau(v,numPoints);
		BezierCurves.push_back(BezierCurve);
	}else if(closeCurve){
		if(v.size()==1){
			Parameters.clear();
			Parameters.push_back(1.0);
		}else if(v.size()<3){
			Parameters.push_back(1.0);
			BezierCurves.clear();
			Casteljau(v,numPoints);
			BezierCurves.push_back(BezierCurve);
		}else{
			BezierCurves.clear();
			for(int i=0;i<8;i++)v.push_back(v[i%v.size()]);
			while(Parameters.size()<v.size()-8)Parameters.push_back(1);
			while(Parameters.size()>v.size()-8)Parameters.pop_back();
			vector<pt> aux=cubicBsplinesCLines(v);
			for(int i=0;i<aux.size()/3;i++){
				v.clear();
				for(int j=0;j<4;j++){
					v.push_back(aux[i*3+j]);
				}
				Casteljau(v,100);
				if(i>1&&i+2	<aux.size()/3)BezierCurves.push_back(BezierCurve);
			}
		}
	}else{
		if(v.size()<5){
			Parameters.clear();
			Parameters.push_back(1.0);
			BezierCurves.clear();
			Casteljau(v,numPoints);
			BezierCurves.push_back(BezierCurve);
		}else{
			BezierCurves.clear();
			while(Parameters.size()+3<v.size())Parameters.push_back(1);
			while(Parameters.size()+3>v.size())Parameters.pop_back();
			vector<pt> aux=cubicBsplinesCLines(v);
			for(int i=0;i<aux.size()/3;i++){
				v.clear();
				for(int j=0;j<4;j++){
					v.push_back(aux[i*3+j]);
				}
				Casteljau(v,100);
				BezierCurves.push_back(BezierCurve);
			}
		}
	}
}	

double summing(vector<double> v){
	double x=0;
	//for(double it:v)x+=it;
	for(int i=0;i<v.size();i++)x+=v[i];
	return x;
}

//letters
void printLetter(double x,double y,char c){
	glColor3f(0.15, 0.15, 0.15);
	if(c=='C'){
		glRectf(clcx(x+5),clcy(y),clcx(x),clcy(y+40));
        glRectf(clcx(x+20),clcy(y),clcx(x),clcy(y+5));
        glRectf(clcx(x+20),clcy(y+35),clcx(x),clcy(y+40));    
	}else if(c=='E'){
		glRectf(clcx(x+5),clcy(y),clcx(x),clcy(y+40));
        glRectf(clcx(x+20),clcy(y),clcx(x),clcy(y+5));
        glRectf(clcx(x+20),clcy(y+18),clcx(x),clcy(y+22));
        glRectf(clcx(x+20),clcy(y+35),clcx(x),clcy(y+40));    
	}else if(c=='B'){
		glRectf(clcx(x+5),clcy(y),clcx(x),clcy(y+40));
        glRectf(clcx(x+20),clcy(y),clcx(x),clcy(y+5));
        glRectf(clcx(x+20),clcy(y+18),clcx(x),clcy(y+22));
        glRectf(clcx(x+20),clcy(y+35),clcx(x),clcy(y+40));
		glRectf(clcx(x+15),clcy(y),clcx(x+20),clcy(y+40));    
	}else if(c=='L'){
		glRectf(clcx(x+5),clcy(y),clcx(x),clcy(y+40));
        glRectf(clcx(x+20),clcy(y+35),clcx(x),clcy(y+40));    
	}else if(c=='O'||c=='0'){
		glRectf(clcx(x+5),clcy(y),clcx(x),clcy(y+40));
		glRectf(clcx(x+15),clcy(y),clcx(x+20),clcy(y+40));
        glRectf(clcx(x+20),clcy(y),clcx(x),clcy(y+5));
        glRectf(clcx(x+20),clcy(y+35),clcx(x),clcy(y+40));    
	}else if(c=='A'){
		glRectf(clcx(x+5),clcy(y),clcx(x),clcy(y+40));
		glRectf(clcx(x+15),clcy(y),clcx(x+20),clcy(y+40));
        glRectf(clcx(x+20),clcy(y),clcx(x),clcy(y+5));
        glRectf(clcx(x+20),clcy(y+15),clcx(x),clcy(y+20));    
	}else if(c=='2'){
		glRectf(clcx(x+5),clcy(y+40),clcx(x),clcy(y+20));
		glRectf(clcx(x+15),clcy(y+20),clcx(x+20),clcy(y));
        glRectf(clcx(x+20),clcy(y+19),clcx(x),clcy(y+21));
        glRectf(clcx(x+20),clcy(y),clcx(x),clcy(y+5));
        glRectf(clcx(x+20),clcy(y+35),clcx(x),clcy(y+40));    
	}else if(c=='S'){
		glRectf(clcx(x+5),clcy(y),clcx(x),clcy(y+20));
		glRectf(clcx(x+15),clcy(y+20),clcx(x+20),clcy(y+40));
        glRectf(clcx(x+20),clcy(y+18),clcx(x),clcy(y+22));
        glRectf(clcx(x+20),clcy(y),clcx(x),clcy(y+5));
        glRectf(clcx(x+20),clcy(y+35),clcx(x),clcy(y+40));    
	}else if(c=='Z'){
        glRectf(clcx(x+20),clcy(y),clcx(x),clcy(y+5));
        glRectf(clcx(x+20),clcy(y+35),clcx(x),clcy(y+40));    
		 glLineWidth(5);
		glBegin(GL_LINES);
			glVertex2f(clcx(x+3),clcy(y+37));
			glVertex2f(clcx(x+17),clcy(y+3));
		glEnd();
	}else if(c=='F'){
		glRectf(clcx(x+5),clcy(y),clcx(x),clcy(y+40));
        glRectf(clcx(x+20),clcy(y),clcx(x),clcy(y+5));
        glRectf(clcx(x+20),clcy(y+15),clcx(x),clcy(y+20));
	}else if(c=='P'){
		glRectf(clcx(x+15),clcy(y),clcx(x+20),clcy(y+20));
		glRectf(clcx(x+5),clcy(y),clcx(x),clcy(y+40));
        glRectf(clcx(x+20),clcy(y),clcx(x),clcy(y+5));
        glRectf(clcx(x+20),clcy(y+15),clcx(x),clcy(y+20));
	}else if(c=='R'){
		glRectf(clcx(x+15),clcy(y),clcx(x+20),clcy(y+20));
		glRectf(clcx(x+15),clcy(y+20),clcx(x+10),clcy(y+40));
		glRectf(clcx(x+5),clcy(y),clcx(x),clcy(y+40));
        glRectf(clcx(x+20),clcy(y),clcx(x),clcy(y+5));
        glRectf(clcx(x+20),clcy(y+15),clcx(x),clcy(y+20));
	}
}

//events
void mbpressed(GLFWwindow* window, int button, int action, int mods){
	double xpos, ypos;
	glfwGetCursorPos(window, &xpos, &ypos);
	if(xpos<480&&ypos<480){//if on screen area
	    if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS){
	    	//point drag
	        for(int i=0;i<ControlPoints.size();i++){
				if(pow(fabs(xpos-ControlPoints[i].first),2)+pow(fabs(ypos-ControlPoints[i].second),2)<distTol/2){
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
	    	if(~SelectedPoint&&fabs(xpos-StartingX)+fabs(ypos-StartingY)<distTol){
	    		ControlPoints.erase(ControlPoints.begin()+SelectedPoint);
	    		processHub(ControlPoints,1000);
	    	}
	    	SelectedPoint=-1;SelSlider=-1;
	    }
	}else if(ypos<480){//if on panel area
		if(button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS&&xpos>500&&xpos<700&&ypos>400&&ypos<460){
			ControlPoints.clear();
			Parameters.clear();
			BezierCurves.clear();
			closeCurve=false;
		}else if(button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS&&xpos>500&&xpos<700&&ypos>320&&ypos<380){
			closeCurve=closeCurve^1;processHub(ControlPoints,1000);
		}else if(button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS&&xpos>500&&xpos<560&&ypos>240&&ypos<300){
			hideBez^=1;
		}else if(button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS&&xpos>570&&xpos<630&&ypos>240&&ypos<300){
			bezC2^=1;processHub(ControlPoints,1000);
		}else if(button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS&&xpos>640&&xpos<700&&ypos>240&&ypos<300){
			hideCp^=1;
		}else if(button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_RELEASE){
	    	if(~SelectedPoint&&fabs(xpos-StartingX)+fabs(ypos-StartingY)<distTol){
	    		ControlPoints.erase(ControlPoints.begin()+SelectedPoint);
	    		if(ControlPoints.size())processHub(ControlPoints,1000);
	    	}
	    	SelectedPoint=-1;SelSlider=-1;
		}
	}else{
		if(button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS){
			double sum=0;SelSlider=-1;
			for(int i=1;i<Parameters.size();i++){
				sum+=Parameters[i-1];
				if(xpos>20+sum*680/summing(Parameters)&&xpos<25+sum*680/summing(Parameters)){
					SelSlider=i;
					MaxSliderX=20+680*(sum+Parameters[i])/summing(Parameters);
					MinSliderX=25+680*(sum-Parameters[i-1])/summing(Parameters);
				}
			}
			if(SelSlider==-1)return;
			processHub(ControlPoints,1000);
		}else if(button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_RELEASE){
			if(~SelectedPoint&&fabs(xpos-StartingX)+fabs(ypos-StartingY)<distTol){
	    		ControlPoints.erase(ControlPoints.begin()+SelectedPoint);
	    		processHub(ControlPoints,1000);
	    	}
	    	SelectedPoint=-1;
			SelSlider=-1;
		}	
	}
}
void mmove(GLFWwindow* window, double xpos, double ypos){
	if(~SelectedPoint){
		ControlPoints[SelectedPoint].first=max(0.0,min(xpos,480.0));
		ControlPoints[SelectedPoint].second=max(0.0,min(ypos,480.0));
		processHub(ControlPoints,100);
	}else if(~SelSlider){
		double sum=Parameters[SelSlider]+Parameters[SelSlider-1];
		Parameters[SelSlider]=sum*(MaxSliderX-max(MinSliderX,min(MaxSliderX-5,xpos-3)))/(MaxSliderX-MinSliderX+5);
		Parameters[SelSlider-1]=sum-Parameters[SelSlider];
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
    glfwMakeContextCurrent(window);//set working area to window
    glfwSetMouseButtonCallback(window, mbpressed);//setting callback for mouse button
    glfwSetCursorPosCallback(window, mmove);//setting callback for mouse move
    while (!glfwWindowShouldClose(window)){//render loop
        glClearColor(0.1f, 0.1f, 0.2f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        glColor3f(0.04, 0.04, 0.14);
        glRectf(clcx(480),clcy(0),clcx(720),clcy(480));
        //panel
        
        glColor3f(0.1, 0.1, 0.17);
        glRectf(clcx(0),clcy(480),clcx(720),clcy(520));
        glColor3f(0.08, 0.08, 0.15);
        glRectf(clcx(0),clcy(480),clcx(720),clcy(481));
        glColor3f(0.06, 0.06, 0.13);
        glRectf(clcx(20),clcy(495),clcx(700),clcy(505));


        glColor3f(0.7, 0.7, 0.7);
        glRectf(clcx(500),clcy(400),clcx(700),clcy(460));
		printLetter(540,410,'C');
		printLetter(565,410,'L');
		printLetter(590,410,'E');
		printLetter(615,410,'A');
		printLetter(640,410,'R');
		
		if(closeCurve)glColor3f(0.85, 0.1, 0.10);
        else glColor3f(0.1, 0.1, 0.85); 
        glRectf(clcx(500),clcy(320),clcx(700),clcy(380));
		printLetter(540,330,'C');
		printLetter(565,330,'L');
		printLetter(590,330,'0');
		printLetter(615,330,'S');
		printLetter(640,330,'E');
		
		if(hideBez)glColor3f(0, 0.1, 0.10);
        else glColor3f(0.1, 0.45, 0.45); 
        glRectf(clcx(500),clcy(240),clcx(560),clcy(300));
       	printLetter(505,250,'B');
       	printLetter(530,250,'Z');        
        
		if(hideCp)glColor3f(0, 0.1, 0.10);
        else glColor3f(0.1, 0.45, 0.45); 
        glRectf(clcx(700),clcy(240),clcx(640),clcy(300));
       	printLetter(645,250,'C');
       	printLetter(670,250,'P');        
        
		if(!bezC2)glColor3f(0, 0.1, 0.10);
        else glColor3f(0.1, 0.45, 0.45); 
        glRectf(clcx(570),clcy(240),clcx(630),clcy(300));
		printLetter(575,250,'C');
		if(bezC2)printLetter(600,250,'2');
		else if(bezC1)printLetter(600,250,'1');
		else printLetter(600,250,'0');
		
        glLineWidth(1.5);
        glColor3f(0.8, 0.8, 0.8);
        if(!hideCp&&closeCurve&&ControlPoints.size()>0){
        	glBegin(GL_LINES);
				glVertex2f(clcx(ControlPoints[0].first),clcy(ControlPoints[0].second));
				glVertex2f(clcx(ControlPoints[ControlPoints.size()-1].first),clcy(ControlPoints[ControlPoints.size()-1].second));
			glEnd();
        }
        if(!hideCp)makeLines(ControlPoints);
        glLineWidth(0.5);
		glColor3f(1.0, 1.0, 1.0);
        if(!hideBez)for(int i=0;i<BezierCurves.size();i++)makeLines(BezierCurves[i]);
       	double sum=0;
		for (int i=0;i+1<Parameters.size();++i){
			glColor3f(1, 1, 1);
			sum+=Parameters[i];
	        glRectf(clcx(20+680.0*sum/summing(Parameters)),clcy(493),clcx(25+680.0*sum/summing(Parameters)),clcy(507));
		}
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
    glfwTerminate();
    return 0;
}
