//
//  main.cpp
//  ch03
//
//  Created by 裴超 on 14-2-11.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#include <iostream>
#include <string>
#include <vector>

using std::string;
using std::cout;
using std::cin;
using std::endl;
using std::vector;

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
//	const string hexdigits = "0123456789ABCDEF";
//	cout << "Enter a series of numbers between 0 and 15"
//		<< " separated by spaces. Hit ENTER when finished: "
//		<< endl;
//	string result;
//	string::size_type n;
//	string::size_type hexdigits_count = hexdigits.size();
//	while (cin >> n) {
//		if (n < hexdigits_count) {
//			result += hexdigits[n];
//		}
//	}
//	cout << "Your hex number is: " << result << endl;
	
	// ----------------- 9.
//	string s9 = "some string";
//	if (s9.begin() != s9.end()) {
//		auto it = s9.begin();
//		*it = toupper(*it);
//	}
//	cout << s9 << endl;
	
	// ----------------- 10.
//	string s10 = "some string";
//	if (s10.begin() != s10.end()) {
//		for (auto it = s10.begin(); it != s10.end() && !isspace(*it); ++it) {
//			(*it) = toupper(*it);
//		}
//	}
//	cout << s10 << endl;
	
	// ----------------- 11.
//	vector<string> text{"paragraph 1","","paragraph 2"};
//	auto it2 = text.cbegin();
//	// 不建议保存 end 返回的迭代器，因为对容器的操作可能会导致 end 迭代器失效
//	// 因此，大多数编译器对 end() 函数的执行一般都非常快
//	auto end2 = text.cend();
//	if (it2 != end2) {
//		for (; it2 != end2 && !(*it2).empty(); ++it2) {
//			cout << (*it2) << endl;
//		}
//	}
	
	// ----------------- 12.
	string s12 = "abcdefghijklmnopqrisuvwxyz";
	auto begin12 = s12.begin();
	auto end12 = s12.end();
	auto middle12 = begin12 + s12.size() / 2;
	string search12 = "x";
	auto it_search12 = search12.begin();
//	cout << *middle12 << endl << *it_search12 << endl;
	while (middle12 != end12 && *middle12 != *it_search12) {
		if (*it_search12 > *middle12) {
			begin12 = middle12 + 1;
		}
		else{
			end12 = middle12;
		}
		middle12 = begin12 + (end12 - begin12) / 2;
	}
	cout << *middle12 << endl;
	
	// ----------------- 13.
	// ----------------- 14.
	// ----------------- 15.
	// ----------------- 16.
	// ----------------- 17.
	// ----------------- 18.
	
	
    return 0;
}

