//
//  ExploreView.swift
//  Resto
//
//  Created by Dilshad P on 03/04/25.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            VStack {
                
                SearchAndFilterBar()
                
                ScrollView {
                    LazyVStack(spacing:32){
                        ForEach(0...10,id:\.self){ listing in
                            NavigationLink(value:listing){
                                ListingItemView()
                            }
                        }
                    }
                }
                .navigationDestination(for: Int.self){ listing in
                    Text("Listing detial view for \(listing)")
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
