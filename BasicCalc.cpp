#include <bits/stdc++.h>
using namespace std;
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
