#import <AppKit/AppKit.h>

NSStatusItem* statusItem;

@interface MochaBugExampleDelegate : NSObject <NSApplicationDelegate> {
	NSStatusItem* statusItem;
}
- (void) applicationDidFinishLaunching : (NSNotification*) notification;
@end

@implementation MochaBugExampleDelegate
- (void) applicationDidFinishLaunching : (NSNotification*) notification {
	NSLog (@"%@", @"Adding menu item...");
	self->statusItem = [NSStatusBar.systemStatusBar statusItemWithLength: -1];
	self->statusItem.button.title = @"foobar";
	self->statusItem.visible = YES;
	NSLog (@"%@", @"Added menu item?");
}
@end

int main (int argc, char* argv[]) {
	MochaBugExampleDelegate* delegate = [[MochaBugExampleDelegate alloc] init];
	[NSApp setDelegate: delegate];
	return NSApplicationMain(argc, (const char **) argv);
}
