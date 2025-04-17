//
//  DeveloperPreview.swift
//  Resto
//
//  Created by Dilshad P on 17/04/25.
//

import Foundation

class DeveloperPreview {
    
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "John Smith", ownerImageUrl: "male-profile", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, price: 567, longitude: 25.7850, imageUrls: ["listing-2", "listing-1", "listing-3", "listing-4"], address: "124 Main St", city: "Miami", state: "Florida", title: "Miami Villa", rating: 4.86, features: [.selfCheckin, .superhost], amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv], type: .villa),
        
            .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Alex Johnson", ownerImageUrl: "male-profile", numberOfBedrooms: 2, numberOfBathrooms: 1, numberOfGuests: 2, numberOfBeds: 2, price: 210, longitude: 34.0522, imageUrls: ["listing-5", "listing-6", "listing-7", "listing-8"], address: "456 Sunset Blvd", city: "Los Angeles", state: "California", title: "Cozy Apartment", rating: 4.65, features: [.selfCheckin], amenities: [.wifi, .tv, .kitchen], type: .apartment),
        
            .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Michael Lee", ownerImageUrl: "male-profile", numberOfBedrooms: 3, numberOfBathrooms: 2, numberOfGuests: 5, numberOfBeds: 3, price: 350, longitude: 40.7128, imageUrls: ["listing-9", "listing-10", "listing-11", "listing-12"], address: "789 Broadway", city: "New York", state: "New York", title: "Central House", rating: 4.78, features: [.superhost], amenities: [.kitchen, .wifi, .laundry, .office], type: .house),
        
            .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Daniel Garcia", ownerImageUrl: "male-profile", numberOfBedrooms: 5, numberOfBathrooms: 4, numberOfGuests: 6, numberOfBeds: 5, price: 800, longitude: 36.1699, imageUrls: ["listing-13", "listing-14", "listing-2", "listing-3"], address: "321 Fremont St", city: "Las Vegas", state: "Nevada", title: "Vegas Townhouse", rating: 4.91, features: [.selfCheckin, .superhost], amenities: [.pool, .tv, .wifi, .alarmSystem], type: .townHouse),
        
            .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "James Brown", ownerImageUrl: "male-profile", numberOfBedrooms: 1, numberOfBathrooms: 1, numberOfGuests: 1, numberOfBeds: 1, price: 120, longitude: 47.6062, imageUrls: ["listing-4", "listing-5", "listing-6", "listing-7"], address: "888 Pine St", city: "Seattle", state: "Washington", title: "Minimalist Stay", rating: 4.52, features: [], amenities: [.wifi, .laundry], type: .apartment),
        
            .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Chris Evans", ownerImageUrl: "male-profile", numberOfBedrooms: 3, numberOfBathrooms: 2, numberOfGuests: 4, numberOfBeds: 3, price: 410, longitude: 41.8781, imageUrls: ["listing-8", "listing-9", "listing-10", "listing-11"], address: "123 Lakeshore Dr", city: "Chicago", state: "Illinois", title: "City View House", rating: 4.75, features: [.superhost], amenities: [.wifi, .balcony, .tv], type: .house),
        
            .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Samuel Green", ownerImageUrl: "male-profile", numberOfBedrooms: 2, numberOfBathrooms: 1, numberOfGuests: 3, numberOfBeds: 2, price: 180, longitude: 29.7604, imageUrls: ["listing-2", "listing-3", "listing-4", "listing-5"], address: "55 Bayou St", city: "Houston", state: "Texas", title: "Budget Townhouse", rating: 4.33, features: [.selfCheckin], amenities: [.tv, .wifi], type: .townHouse)
    ]
}
