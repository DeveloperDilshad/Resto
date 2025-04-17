import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "listing-1" asset catalog image resource.
    static let listing1 = DeveloperToolsSupport.ImageResource(name: "listing-1", bundle: resourceBundle)

    /// The "listing-10" asset catalog image resource.
    static let listing10 = DeveloperToolsSupport.ImageResource(name: "listing-10", bundle: resourceBundle)

    /// The "listing-11" asset catalog image resource.
    static let listing11 = DeveloperToolsSupport.ImageResource(name: "listing-11", bundle: resourceBundle)

    /// The "listing-12" asset catalog image resource.
    static let listing12 = DeveloperToolsSupport.ImageResource(name: "listing-12", bundle: resourceBundle)

    /// The "listing-13" asset catalog image resource.
    static let listing13 = DeveloperToolsSupport.ImageResource(name: "listing-13", bundle: resourceBundle)

    /// The "listing-14" asset catalog image resource.
    static let listing14 = DeveloperToolsSupport.ImageResource(name: "listing-14", bundle: resourceBundle)

    /// The "listing-2" asset catalog image resource.
    static let listing2 = DeveloperToolsSupport.ImageResource(name: "listing-2", bundle: resourceBundle)

    /// The "listing-3" asset catalog image resource.
    static let listing3 = DeveloperToolsSupport.ImageResource(name: "listing-3", bundle: resourceBundle)

    /// The "listing-4" asset catalog image resource.
    static let listing4 = DeveloperToolsSupport.ImageResource(name: "listing-4", bundle: resourceBundle)

    /// The "listing-5" asset catalog image resource.
    static let listing5 = DeveloperToolsSupport.ImageResource(name: "listing-5", bundle: resourceBundle)

    /// The "listing-6" asset catalog image resource.
    static let listing6 = DeveloperToolsSupport.ImageResource(name: "listing-6", bundle: resourceBundle)

    /// The "listing-7" asset catalog image resource.
    static let listing7 = DeveloperToolsSupport.ImageResource(name: "listing-7", bundle: resourceBundle)

    /// The "listing-8" asset catalog image resource.
    static let listing8 = DeveloperToolsSupport.ImageResource(name: "listing-8", bundle: resourceBundle)

    /// The "listing-9" asset catalog image resource.
    static let listing9 = DeveloperToolsSupport.ImageResource(name: "listing-9", bundle: resourceBundle)

    /// The "male-profile" asset catalog image resource.
    static let maleProfile = DeveloperToolsSupport.ImageResource(name: "male-profile", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "listing-1" asset catalog image.
    static var listing1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .listing1)
#else
        .init()
#endif
    }

    /// The "listing-10" asset catalog image.
    static var listing10: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .listing10)
#else
        .init()
#endif
    }

    /// The "listing-11" asset catalog image.
    static var listing11: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .listing11)
#else
        .init()
#endif
    }

    /// The "listing-12" asset catalog image.
    static var listing12: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .listing12)
#else
        .init()
#endif
    }

    /// The "listing-13" asset catalog image.
    static var listing13: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .listing13)
#else
        .init()
#endif
    }

    /// The "listing-14" asset catalog image.
    static var listing14: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .listing14)
#else
        .init()
#endif
    }

    /// The "listing-2" asset catalog image.
    static var listing2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .listing2)
#else
        .init()
#endif
    }

    /// The "listing-3" asset catalog image.
    static var listing3: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .listing3)
#else
        .init()
#endif
    }

    /// The "listing-4" asset catalog image.
    static var listing4: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .listing4)
#else
        .init()
#endif
    }

    /// The "listing-5" asset catalog image.
    static var listing5: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .listing5)
#else
        .init()
#endif
    }

    /// The "listing-6" asset catalog image.
    static var listing6: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .listing6)
#else
        .init()
#endif
    }

    /// The "listing-7" asset catalog image.
    static var listing7: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .listing7)
#else
        .init()
#endif
    }

    /// The "listing-8" asset catalog image.
    static var listing8: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .listing8)
#else
        .init()
#endif
    }

    /// The "listing-9" asset catalog image.
    static var listing9: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .listing9)
#else
        .init()
#endif
    }

    /// The "male-profile" asset catalog image.
    static var maleProfile: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .maleProfile)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "listing-1" asset catalog image.
    static var listing1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .listing1)
#else
        .init()
#endif
    }

    /// The "listing-10" asset catalog image.
    static var listing10: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .listing10)
#else
        .init()
#endif
    }

    /// The "listing-11" asset catalog image.
    static var listing11: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .listing11)
#else
        .init()
#endif
    }

    /// The "listing-12" asset catalog image.
    static var listing12: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .listing12)
#else
        .init()
#endif
    }

    /// The "listing-13" asset catalog image.
    static var listing13: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .listing13)
#else
        .init()
#endif
    }

    /// The "listing-14" asset catalog image.
    static var listing14: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .listing14)
#else
        .init()
#endif
    }

    /// The "listing-2" asset catalog image.
    static var listing2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .listing2)
#else
        .init()
#endif
    }

    /// The "listing-3" asset catalog image.
    static var listing3: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .listing3)
#else
        .init()
#endif
    }

    /// The "listing-4" asset catalog image.
    static var listing4: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .listing4)
#else
        .init()
#endif
    }

    /// The "listing-5" asset catalog image.
    static var listing5: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .listing5)
#else
        .init()
#endif
    }

    /// The "listing-6" asset catalog image.
    static var listing6: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .listing6)
#else
        .init()
#endif
    }

    /// The "listing-7" asset catalog image.
    static var listing7: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .listing7)
#else
        .init()
#endif
    }

    /// The "listing-8" asset catalog image.
    static var listing8: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .listing8)
#else
        .init()
#endif
    }

    /// The "listing-9" asset catalog image.
    static var listing9: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .listing9)
#else
        .init()
#endif
    }

    /// The "male-profile" asset catalog image.
    static var maleProfile: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .maleProfile)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

