//
//  SignIn_View.swift
//  Login_D2
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/14.
//

import SwiftUI

struct SignIn_View: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        NavigationStack{
            VStack{
                Spacer()
                Spacer()
                Spacer()
                Text("Sign In")
                    .font(.largeTitle)
                    .bold()
                    .padding(.leading, -180)
                VStack {
                    Text("Your Email")
                        .padding(.top)
                        .opacity(0.3)
                        .bold()
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
                }.padding(.bottom, 40)
                
                Text("Login")
                    .foregroundColor(.white)
                    .frame(width: 350, height: 50)
                    .background(
                        Color(.systemBlue))
                    .cornerRadius(30)
                    .padding(.bottom, 40)
                Text("Forgot Password?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                    .padding(.bottom, 100)
    
                VStack {
                    Spacer()
                    NavigationLink{
                        SignUp_View()
                            .navigationBarBackButtonHidden()
                    } label: {
                        HStack {
                            Text("Don't have an account?")
                                .foregroundColor(.black)
                            Text("Sign Up")
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
    SignIn_View()
}
