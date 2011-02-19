#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	NSFileHandle *fin, *fout;
	NSData *buffer;
	
	//open tester file for reading
	fin = [NSFileHandle fileHandleForReadingAtPath:@"testerfile"];
	
	[[NSFileManager defaultManager]createFileAtPath:@"newfile" contents:nil attributes:nil];
	fout= [NSFileHandle fileHandleForWritingAtPath:@"newfile"];
	
	//truncate file
	[fout truncateFileAtOffset:0];
	
	buffer=[fin readDataToEndOfFile];
	[fout writeData: buffer];
	
	[fin closeFile];
	[fout closeFile];
	
	[pool drain];
    return 0;
}


