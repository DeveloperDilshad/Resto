//
//  ExploreViewModel.swift
//  Resto
//
//  Created by Dilshad P on 17/04/25.
//

import Foundation

class ExploreViewModel: ObservableObject {
    
    @Published var listings = [Listing]()
    @Published  var searchLocation:String = ""
    private let service:ExploreService
    private var listingCopy = [Listing]()
    
    init(service:ExploreService) {
        self.service = service
        Task{ await fetchListings()}
    }
    
    func fetchListings()async {
        do{
            self.listings = try await service.fetchListings()
            self.listingCopy = listings
        }catch{
            print("Debug: Error fetching listings: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation() {
        let filteredListings = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingCopy : filteredListings
    }
}
