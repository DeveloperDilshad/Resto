//
//  WishListView.swift
//  Resto
//
//  Created by Dilshad P on 06/04/25.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        NavigationStack {
            
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log in to view your wishlist")
                        .font(.subheadline)
                    
                    Text("You can create, view or edit once you've logged in")
                        .font(.footnote)
                }
                
                Button {
                    
                } label: {
                    Text("Login")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360,height: 48)
                        .background(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Whislists")
        }
    }
}

#Preview {
    WishListView()
}
