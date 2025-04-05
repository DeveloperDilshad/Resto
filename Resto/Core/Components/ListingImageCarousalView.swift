//
//  ListingImageCarousalView.swift
//  Resto
//
//  Created by Dilshad P on 03/04/25.
//

import SwiftUI

struct ListingImageCarousalView: View {
    
    
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        ]
    
    var body: some View {
        TabView {
            ForEach(images,id:\.self){image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarousalView()
}
