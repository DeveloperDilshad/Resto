//
//  ExploreView.swift
//  Resto
//
//  Created by Dilshad P on 03/04/25.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView : Bool = false
    @StateObject var viewModel =  ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack{
            
            if showDestinationSearchView {
                
                DestinationSearchView(show: $showDestinationSearchView, viewModel: viewModel)
                
            }else {
                
                VStack {
                    
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    ScrollView {
                        LazyVStack(spacing:32){
                            ForEach(viewModel.listings){ listing in
                                NavigationLink(value:listing){
                                    ListingItemView(listing: listing)
                                }
                            }
                        }
                    }
                    .navigationDestination(for: Listing.self){ listing in
                        ListingDetailView(listing: listing)
                            .navigationBarBackButtonHidden()
                            .navigationBarHidden(true)
                    }
                }
                
            }
        }
    }
}

#Preview {
    ExploreView()
}
