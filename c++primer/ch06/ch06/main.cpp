//
//  main.cpp
//  ch06
//
//  Created by 裴超 on 14-2-13.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#include <iostream>
//#include <>

using std::cout;
using std::endl;
using std::string;

int fact(int num)
{
	int result = 1;
	while (num > 1) {
		result *= num--;
	}
	return result;
}


// ------- 练习 6.2
//void f2(int i){
//	
//}
//
//int calc(int v1, int v2){ return v1 + v2; }
//
//double square(double x) {return x * x;}

// --------- page 185
//size_t count_calls()
//{
//	static size_t ctr = 0;
//	return ++ctr;
//}

// --------- page 188 指针形参
void reset(int *ip)
{
	*ip = 0;
	ip = 0;
}

// -------- page 188 传引用参数
void reset2(int &i)
{
	i = 0;
}

// ------- page 189 使用引用，避免拷贝
bool isShorter(const string &s1, const string &s2)
{
	return s1.size() < s2.size();
}

// --------- page 190 通过引用参数，返回更多的有用信息
string::size_type find_char(const string &s, char c, string::size_type &count)
{
	auto index = s.size();
//	index = -1;
	count = 0;
	for (decltype(index) i = 0; i != s.size(); i++) {
		if (s[i] == c) {
			if(index == -1) index = i;
			count++;
		}
	}
	return index;
}


int main(int argc, const char * argv[])
{

	// insert code here...
//	std::cout << "Hello, World!\n";
	
	// ---------- 1.
//	int fact_to_calc = 6;
//	cout << "the fact of " << fact_to_calc << " is: " << fact(fact_to_calc) << endl;
	
	// ---------- page 185
//	for (size_t i = 0; i != 10; ++i) {
//		cout << count_calls() << endl;
//	}
	
	// ---------- page 188
//	int i = 42;
//	reset(&i);
//	cout << "i = " << i << endl;
	
	// ---------- page 188
//	int j = 42;
//	reset2(j);
//	cout << "j = " << j << endl;
	
	// ---------- page 189
//	string s189_1 = "abc";
//	string s189_2 = "cddd";
//	cout << "is s189_1 < s189_2 ? " << isShorter(s189_1, s189_2) << endl;
	
	// ---------- page 190
	string s190 = "what is your name?";
	char find190 = 'b';
	string::size_type count190;
	string::size_type index190 = find_char(s190, find190, count190);
	cout << "char '" << find190 << "' in string \"" << s190 << "\", index: " << index190 << ", count: " << count190 << endl;
	
	
    return 0;
}

