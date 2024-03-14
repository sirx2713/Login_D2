//
//  ContentView.swift
//  Login_D2
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/14.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("main")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                VStack{
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("Welcome !")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("You don't need a silver folk to eat good food")
                        .font(.footnote)
                        .bold()
                        .foregroundColor(.white)
                    Spacer()
                    Spacer()
                    HStack(alignment: .bottom){
                        
                        NavigationLink{
                            SignUp_View()
                                .navigationBarBackButtonHidden()
                        } label: {
                            Text("Create Account")
                                .font(.headline)
                                .bold()
                                .foregroundColor(.black)
                                .frame(width: 150, height: 50)
                                .background(Color(.white))
                                .cornerRadius(15)
                        }
                        
                        NavigationLink{
                            SignIn_View()
                                .navigationBarBackButtonHidden()
                        } label: {
                            Text("Sign In")
                                .font(.headline)
                                .bold()
                                .foregroundColor(.white)
                                .frame(width: 100, height: 50)
                                .background(Color(.black))
                                .cornerRadius(15)
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
