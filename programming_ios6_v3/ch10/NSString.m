#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
	int x = 5;
	NSString* s = @"widgets";
	NSString* s2 = [NSString stringWithFormat:@"哈哈,You have %i %@.", x, s];
	NSString *s3 = [NSString stringWithCString:"new String" encoding:NSASCIIStringEncoding];
	NSString *s4 = [[NSString alloc] initWithCString:"stirng4" encoding:NSUTF8StringEncoding];
	
	NSRange range = NSMakeRange(0, 5);
	NSLog(@"location is %ld, length is %ld", range.location, range.length);

	NSString *s5 = [[s2 stringByAppendingString:@", hello, "] stringByAppendingFormat:@"%d...%d", 10, 20];
	NSLog(@"s5(%@)'s length is: %ld.", s5, [s5 length]);

	NSMutableString *ms1 = [NSMutableString stringWithString:@"hello"];
	[ms1 appendString:@" world"];
	[ms1 appendString:@" and money.haha,here will be deleted"];
	
	NSRange r = [ms1 rangeOfString:@" and"];
	if(r.location != NSNotFound){
		[ms1 insertString:@" &" atIndex:r.location];
	}else{
		NSLog(@"not found substr");
	}
	NSLog(@"%@", ms1);
	
	NSRange r2 = [ms1 rangeOfString:@"money."];
	if(r2.location != NSNotFound){
		int i1 = r2.location + r2.length;
		NSRange r3 = NSMakeRange(i1, ms1.length - i1);
		NSLog(@"start:%d, length:%ld.", i1, ms1.length - i1);
		[ms1 deleteCharactersInRange:r3];
	}else{
	}
	NSLog(@"%@", ms1);

	NSString *fileString = [NSString stringWithContentsOfFile:@"./t.txt" encoding:NSUTF8StringEncoding error:nil];
	NSLog(@"%@", [[[NSString alloc] initWithString:@"\n"] stringByAppendingString:fileString]);

	return 0;
}
