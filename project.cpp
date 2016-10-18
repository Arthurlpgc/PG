#include <bits/stdc++.h>
using namespace std;
#define PX first
#define PY second 
typedef pair<double,double> pt;
pt FindBezierPt(vector<pt> v,double t){
	if(v.size()==1)return v[0];
	vector<pt> aux;
	for(int i=0;i<v.size()-1;i++){
		aux.push_back(make_pair(v[i].PX*t+v[i+1].PX*(1-t),v[i].PY*t+v[i+1].PY*(1-t)));
	}
}