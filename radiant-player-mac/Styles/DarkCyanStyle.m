/*
 * DarkCyanStyle.m
 *
 * Created by Chris Chrisostomou.
 *
 * Subject to terms and conditions in LICENSE.md.
 *
 */

#import "DarkCyanStyle.h"

@implementation DarkCyanStyle

- (id)init
{
    if (self = [super init]) {
        [self setName:@"Dark Cyan"];
        [self setAuthor:@"Chris Chrisostomou & Daniel Stuart"];
        [self setDescription:@"A deep black & cyan style."];
        //[self setWindowColor:[NSColor colorWithDeviceRed:(3/255.0f) green:(156/255.0f) blue:(172/255.0f) alpha:1.0]];
        [self setWindowColor:[NSColor colorWithDeviceRed:(18/255.0f) green:(19/255.0f) blue:(20/255.0f) alpha:1.0]];
        [self setTitleColor:[NSColor colorWithDeviceWhite:0.2f alpha:1.0f]];
        [self setCss:[ApplicationStyle cssNamed:@"dark-cyan"]];
    }

    return self;
}

- (void)applyToWebView:(WebView *)webView window:(NSWindow *)window
{
    [self setCss:[NSString stringWithFormat:@"%@%@", [ApplicationStyle cssNamed:@"spotify-black"] , [self css]]];
    [super applyToWebView:webView window:window];
}

@end
