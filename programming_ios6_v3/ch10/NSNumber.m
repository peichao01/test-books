#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
	NSNumber* intNumber = [NSNumber numberWithInt:100];
	NSNumber* floatNumber = [NSNumber numberWithFloat:100.00];

	int i = [intNumber intValue];
	float f = [floatNumber floatValue];

	int f2 = [intNumber floatValue];
	float i2 = [floatNumber intValue];

	if([intNumber isEqualToNumber:floatNumber]){
		NSLog(@"%d === %f.", i, f);
	}

	if(i == i2 && f == f2){
		NSLog(@"Number can convert to any digital type.");
	}

	return 0;
}
