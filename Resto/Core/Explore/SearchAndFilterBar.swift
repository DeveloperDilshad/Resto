//
//  SearchAndFilterBar.swift
//  Resto
//
//  Created by Dilshad P on 03/04/25.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2){
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Anywhere - Any Week - Add guests")
                    .font(.caption)
                    .foregroundStyle(.gray)
                    
            }
            
            Spacer()
            
            Button {
                print("")
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            }

        }
            .padding(.horizontal)
            .padding(.vertical,10)
            .overlay{
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(Color(.systemGray6))
                    .shadow(color:.black.opacity(0.4),radius: 2)
            }
            .padding()
    }
}

#Preview {
    SearchAndFilterBar()
}
