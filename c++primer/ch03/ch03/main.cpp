//
//  main.cpp
//  ch03
//
//  Created by 裴超 on 14-2-11.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#include <iostream>
#include <string>

using std::string;
using std::cout;
using std::cin;
using std::endl;

int main(int argc, const char * argv[])
{

	// ----------------- 1.
//	string s1 = "";
//	string s2;
//	
//	if (s1.empty())
//	{
//		cout << "s1 is empty";
//	}
//	else
//	{
//		cout << "s1 is not empty";
//	}
//	cout << "\n";
//	
//	if (s1 == s2) {
//		cout << "s1 == s2";
//	}
//	else
//	{
//		cout << "s1 != s2";
//	}
//	cout << "\n";
	
//	cout << s1.size() << "\n";
	
	// ----------------- 2.
//	string word;
//	while (cin >> word) {
//		cout << word << endl;
//	}
	
	// ----------------- 3.
//	string line;
//	while (getline(cin, line)) {
//		cout << line << endl;
//	}
	// ----------------- 4.
//	string s3, s4 = "Hi! 熊猫!";
//	auto s3_size = s3.size();
//	string::size_type s4_size = s4.size();
//	cout << s3_size << endl << s4_size << endl
//		<< s4[0] << endl << s4[4] << endl;
	
	// ----------------- 5.
//	string s5 = "Hello", s6 = "World";
//	cout << s5 + ", " + s6 + '\n'
//		<< "\n" << '\n'
//		//错误，两边都是 (const char*) 类型的，至少有一边是 string 类型的，则可以将 const char* 类型自动转换
//		//<< "Hi" + " 2!"
//		<< "Hi" + s5;
	
	// ----------------- 6.
//	string s7("Hello World!!!");
//	decltype(s7.size()) punct_count = 0;
//	for (auto c : s7) {
//		if (ispunct(c)) {
//			punct_count++;
//		}
//	}
//	cout << punct_count
//	<< " punctuation characters in " << s7 << endl;
	
	// ----------------- 7.
//	string s8("Hello World!!!");
//	for (auto &c : s8) {
//		c = toupper(c);
//	}
//	cout << s8 << endl;
	
	// ----------------- 8.
	const string hexdigits = "0123456789ABCDEF";
	cout << "Enter a series of numbers between 0 and 15"
		<< " separated by spaces. Hit ENTER when finished: "
		<< endl;
	string result;
	string::size_type n;
	string::size_type hexdigits_count = hexdigits.size();
	while (cin >> n) {
		if (n < hexdigits_count) {
			result += hexdigits[n];
		}
	}
	cout << "Your hex number is: " << result << endl;
	
	// ----------------- 9.
	
	
    return 0;
}

