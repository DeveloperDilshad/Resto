//
//  DestinationSearchView.swift
//  Resto
//
//  Created by Dilshad P on 06/04/25.
//

import SwiftUI


enum DestinationSearchOptions {
    case location
    case date
    case guests
}


struct DestinationSearchView: View {
    
    @Binding var show:Bool
    @State private var destination = ""
    @State private var selectedOption:DestinationSearchOptions = .location
    
    var body: some View {
        VStack {
            
            Button {
                
                withAnimation(.snappy) {
                    show.toggle()
                }
                
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            
            VStack(alignment:.leading) {
                
                if selectedOption == .location {
                    
                    Text("where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search for places",text : $destination)
                            .font(.subheadline)
                        
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(.gray)
                    }
                    
                }else{
                    CollapsedPickerView(title: "where", description: "Add destination")
                    
                }
            }
            .padding()
            .frame(height: selectedOption == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
            
            // date selection view
            VStack {
                
                if selectedOption == .date {
                    
                    HStack {
                        Text("Show expanded view")
                        
                        Spacer()
                    }
                    
                    
                }else {
                    
                    CollapsedPickerView(title: "When", description: "Add Dates")
                       
                }
            }
            .padding()
            .frame(height: selectedOption == .date ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .date
                }
            }

            
            // num selection view
            VStack {
                
                if selectedOption == .guests {
                    
                    HStack {
                        Text("Show expanded view")
                        
                        Spacer()
                    }
                    
                }else {
                    CollapsedPickerView(title: "wWho", description: "Add guests")
                      
                }
                
            }
            .padding()
            .frame(height: selectedOption == .guests ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests
                }
            }

        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .font(.subheadline)
            .fontWeight(.semibold)
        }
        
    }
}
