//
//  ProfileView.swift
//  Resto
//
//  Created by Dilshad P on 06/04/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            
            VStack(alignment:.leading,spacing: 32) {
                
                VStack (alignment:.leading,spacing: 8){
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Login to start planning your next trip")
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
                
                HStack {
                    Text("Don't have an account?")
                    
                    Text("Sign Up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            VStack(spacing:24) {
                
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                
                ProfileOptionRowView(imageName: "gear", title: "Accessability")
                
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
