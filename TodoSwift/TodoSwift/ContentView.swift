//
//  ContentView.swift
//  TodoSwift
//
//  Created by 박승민 on 8/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                HStack{
                    Text("Welcome to ")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Todoapp")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Default"))
                }
                
                ZStack {
                    Image("Phone")
                    Image("Chart")
                        .position(x: 85, y: 140)
                    
                    VStack {
                        Spacer()
                        
                        Rectangle()
                            .fill(Color.white.opacity(1))
                            .frame(height: UIScreen.main.bounds.height * 0.2)
                            .blur(radius: 10)
                    }
                    Image("Menu")
                        .position(x: 275, y: 310)
                }
            }
            .padding()
            
            VStack(spacing: 20) {
                NavigationLink(destination: LoginView()
                    .navigationBarBackButtonHidden(true)){
                    HStack(spacing: 10) {
                        Image(systemName: "checkmark.square.fill")
                            .foregroundColor(.white)
                        
                        Text("Continue with Email")
                        
                            .font(.headline)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("Default"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .padding(.horizontal, 20)
                
                HStack {
                    Spacer()
                        .frame(width: 20)
                    VStack{
                        Divider()
                            .background(Color.gray)
                            .frame(height: 10)
                    }
                    
                    Text("or continue with")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    VStack{
                        Divider()
                            .background(Color.gray)
                            .frame(height: 10)
                    }
                    Spacer()
                        .frame(width: 20)
                }
                
                HStack(spacing: 20) {
                    Button(action: {
                    }) {
                        HStack {
                            Image("Facebook")
                                .foregroundColor(.white)
                            Text("Facebook")
                                .foregroundColor(.black)
                        }
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(Color(UIColor.systemGray5))
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                    }) {
                        HStack {
                            Image("Google")
                                .foregroundColor(.white)
                            Text("Google")
                                .foregroundColor(.black)
                        }
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(Color(UIColor.systemGray5))
                        .cornerRadius(10)
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

#Preview {
    ContentView()
}
