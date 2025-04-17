//
//  ListingImageCarousalView.swift
//  Resto
//
//  Created by Dilshad P on 03/04/25.
//

import SwiftUI

struct ListingImageCarousalView: View {
    
    let listing:Listing
    
    var body: some View {
        TabView {
            ForEach(listing.imageUrls,id:\.self){image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarousalView(listing: DeveloperPreview.shared.listings[0])
}
