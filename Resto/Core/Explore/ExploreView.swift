//
//  ExploreView.swift
//  Resto
//
//  Created by Dilshad P on 03/04/25.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView : Bool = false
    
    var body: some View {
        NavigationStack{
            
            if showDestinationSearchView {
                
                DestinationSearchView(show: $showDestinationSearchView)
                
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
                            ForEach(0...10,id:\.self){ listing in
                                NavigationLink(value:listing){
                                    ListingItemView()
                                }
                            }
                        }
                    }
                    .navigationDestination(for: Int.self){ listing in
                        ListingDetailView()
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
