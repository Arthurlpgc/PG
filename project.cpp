#include <bits/stdc++.h>
using namespace std;
#define pair<double,double> pt;
pt point(vector<pt> v,double t){
	if(v.size()==1)return v[0];
	vector<pt> aux;
	for(int i=0;i<v.size()-1;i++){
		aux.push_back(make_pair(v[i].first*t+v[i+1].PX*(1-t)))
	}
}