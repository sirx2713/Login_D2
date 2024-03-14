//
//  SignUp_View.swift
//  Login_D2
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/14.
//

import SwiftUI

struct SignUp_View: View {
    
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var verifyPassword = ""
    
    var body: some View {
        
        NavigationStack{
            VStack{
                Spacer()
                Spacer()
                Spacer()
                Text("Sign Up")
                    .font(.largeTitle)
                    .bold()
                    .padding(.leading, -180)
                VStack {
                    Text("Your Name")
                        .opacity(0.3)
                        .padding(.top)
                        .bold()
                    .padding(.leading, -180)
                    TextField("", text: $username)
                        .frame(width: 350, height: 50)
                        .background(
                            Color(.systemBlue)
                                .opacity(0.1))
                        .cornerRadius(30)
                    Text("Your Email")
                        .opacity(0.3)
                        .bold()
                        .padding(.top)
                        .padding(.leading, -180)
                    TextField("", text: $email)
                        .frame(width: 350, height: 50)
                        .background(
                            Color(.systemBlue)
                                .opacity(0.1))
                        .cornerRadius(30)
                    Text("Your Password")
                        .opacity(0.3)
                        .bold()
                        .padding(.top)
                        .padding(.leading, -180)
                    SecureField("", text: $password)
                        .frame(width: 350, height: 50)
                        .background(
                            Color(.systemBlue)
                                .opacity(0.1))
                        .cornerRadius(30)
                    Text("Confirm Password")
                        .opacity(0.3)
                        .bold()
                        .padding(.top)
                        .padding(.leading, -180)
                    SecureField("", text: $verifyPassword)
                        .frame(width: 350, height: 50)
                        .background(
                            Color(.systemBlue)
                                .opacity(0.1))
                        .cornerRadius(30)
                    
                }.padding(.bottom, 40)
                
                Text("Create Account")
                    .foregroundColor(.white)
                    .frame(width: 350, height: 50)
                    .background(
                        Color(.systemBlue))
                    .cornerRadius(30)
                    .padding(.bottom, 40)
    
                VStack {
                    Spacer()
                    NavigationLink{
                        SignIn_View()
                            .navigationBarBackButtonHidden()
                    } label: {
                        HStack {
                            Text("Already have an account?")
                                .foregroundColor(.black)

                            Text("Sign In")
                        }
                    }.padding(.bottom)
                    NavigationLink{
                        MenuView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Image(systemName: "house.circle.fill")
                    }
                }
            }
        }

    }
}

#Preview {
    SignUp_View()
}

