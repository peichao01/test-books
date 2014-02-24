//
//  CH8_1.cpp
//  ch08
//
//  Created by 裴超 on 14-2-23.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#include "CH8_1.h"

using namespace std;

void CH8_1::test1()
{
	auto old_state = cin.rdstate();
	cin.clear();
	process_input(cin);
	
	string str2;
	cin >> str2;
	cout << str2 << endl;
	
	cin.setstate(old_state);
};

istream& CH8_1::process_input(istream& pc_in)
{
	string str;
	pc_in >> str;
	cout << str << endl;
	return pc_in;
};

void CH8_1::test2()
{
	cout << "--hi flush--" << flush;
	cout << "--hi ends--" << ends;
	cout << "hi endl!--" << endl;
};