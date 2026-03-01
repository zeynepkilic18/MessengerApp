//
//  RegistrationView.swift
//  Messenger
//
//  Created by Zeynep Kılıç on 1.03.2026.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            // logo image
            Image("messenger")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding()
            
            // text fields
            VStack(spacing:15) {
                TextField("Enter your full name", text: $fullName)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("Enter your password", text: $password).font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
            
            // signup button
            Button {
                print("Handle signup")
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
               dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    Text("Sign In").fontWeight(.semibold)
                }
                .font(.footnote)
            }
        }
    } }

#Preview {
    RegistrationView()
}
