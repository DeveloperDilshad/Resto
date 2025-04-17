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
    @State private var selectedOption:DestinationSearchOptions = .location
    @State private var startDate:Date = Date()
    @State private var endDate:Date = Date()
    @State private var numGuests = 0
    @ObservedObject var viewModel:ExploreViewModel
    
    var body: some View {
        VStack {
            
            HStack {
                Button {
                                    
                    withAnimation(.snappy) {
                        show.toggle()
                    }
                    
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                if !viewModel.searchLocation.isEmpty {
                    Button("Clear"){
                        viewModel.searchLocation = ""
                        viewModel.updateListingsForLocation()
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            VStack(alignment:.leading) {
                
                if selectedOption == .location {
                    
                    Text("where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search for places",text : $viewModel.searchLocation)
                            .font(.subheadline)
                            .onSubmit {
                                viewModel.updateListingsForLocation()
                                show.toggle()
                            }
                        
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
            .modifier(CollapsedDestinationViewModifier())
            .frame(height: selectedOption == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
            
            // date selection view
            VStack(alignment:.leading) {
                
                if selectedOption == .date {
                    
                   Text("When is your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                }else {
                    
                    CollapsedPickerView(title: "When", description: "Add Dates")
                       
                }
            }
            .modifier(CollapsedDestinationViewModifier())
            .frame(height: selectedOption == .date ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .date
                }
            }

            
            // num selection view
            VStack(alignment:.leading) {
                
                if selectedOption == .guests {
            Text("Who is coming?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Stepper {
                        Text("\(numGuests) Adults")
                    } onIncrement: {
                        numGuests += 1
                    } onDecrement: {
                        
                        guard numGuests > 0 else { return }
                        numGuests -= 1
                    }

                    
                }else {
                    CollapsedPickerView(title: "Who", description: "Add guests")
                      
                }
                
            }
            .modifier(CollapsedDestinationViewModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false), viewModel: ExploreViewModel(service: ExploreService()))
}



struct CollapsedDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            
    }
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
