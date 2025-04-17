//
//  Listing.swift
//  Resto
//
//  Created by Dilshad P on 17/04/25.
//

import Foundation

struct Listing: Identifiable,Codable,Hashable {
    
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var price: Int
    let longitude: Double
    var imageUrls: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    var type: ListingType
    
}

enum ListingFeatures: Int, Codable,Identifiable,Hashable {
    
    case selfCheckin
    case superhost
    
    var imageName: String {
        switch self {
        case .selfCheckin:
            return "door.left.hand.open"
        case .superhost:
            return "medal"
        }
    }
    
    var title: String {
        switch self {
        case .selfCheckin:
            return "Self Checkin"
        case .superhost:
            return "Superhost"
        }
    }
    
    var subtitle: String {
        switch self {
        case .selfCheckin:
            return "Check yourself in with keypad"
        case .superhost:
            return "Superhosts are experienced, highly rated who are committed to providing greats star for guuest."
        }
    }
    
    var id: Int { return self.rawValue }
}

enum ListingAmenities : Int,Codable,Identifiable,Hashable {
    
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String {
        switch self {
        case .pool:
            return "Pool"
        case .kitchen:
            return "Kitchen"
        case .wifi:
            return "Wifi"
        case .laundry:
            return "Laundry"
        case .tv:
            return "Tv"
        case .alarmSystem:
            return "Alarm System"
        case .office:
            return "Office"
        case .balcony:
            return "Balcony"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool:
            return "figure.pool.swim"
        case .kitchen:
            return "fork.knife"
        case .wifi:
            return "wifi"
        case .laundry:
            return "washer"
        case .tv: return "tv"
        case .alarmSystem:
            return "checkerboard.shield"
        case .office:
            return "pencil.and.ruler.fill"
        case .balcony:
            return "building"
        }
    }
    
    var id: Int { return self.rawValue }
    
}

enum ListingType : Int,Codable,Identifiable,Hashable {
    
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment:
            return "Apartment"
        case .house:
            return "House"
        case .townHouse:
            return "Town House"
        case .villa:
            return "Villa"
        }
    }
    
    var id: Int { return self.rawValue }
}
