#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "listing-1" asset catalog image resource.
static NSString * const ACImageNameListing1 AC_SWIFT_PRIVATE = @"listing-1";

/// The "listing-2" asset catalog image resource.
static NSString * const ACImageNameListing2 AC_SWIFT_PRIVATE = @"listing-2";

/// The "listing-3" asset catalog image resource.
static NSString * const ACImageNameListing3 AC_SWIFT_PRIVATE = @"listing-3";

/// The "listing-4" asset catalog image resource.
static NSString * const ACImageNameListing4 AC_SWIFT_PRIVATE = @"listing-4";

#undef AC_SWIFT_PRIVATE
