//
//  ExploreService.swift
//  Resto
//
//  Created by Dilshad P on 17/04/25.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        
        return DeveloperPreview.shared.listings
        
    }
}
