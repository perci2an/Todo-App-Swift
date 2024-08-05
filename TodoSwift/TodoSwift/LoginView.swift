//
//  LoginView.swift
//  TodoSwift
//
//  Created by 박승민 on 8/5/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State private var isSecure = false
    
    var body: some View {
        NavigationStack{
            VStack {
                Text("Welcome Back!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Your work faster and structured with  Todoapp")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            VStack{
                VStack(alignment: .leading) {
                    Text("Email Address")
                    TextField("Enter your email", text: $email)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 20)
                
                VStack(alignment: .leading) {
                    Text("Password")
                    HStack {
                        if isSecure {
                            SecureField("Enter your password", text: $password)
                                .padding()
                        } else {
                            TextField("Enter your password", text: $password)
                                .padding()
                        }
                        
                        Button(action: {
                            isSecure.toggle()
                        }) {
                            Image(systemName: isSecure ? "eye.slash" : "eye")
                                .foregroundColor(.gray)
                        }
                        .padding(.trailing, 10)
                    }
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(10)
                }
                .padding(.horizontal, 20)
            }
            .padding(.top, 60)
            
            Spacer()
            
            VStack(spacing: 20) {
//                NavigationLink(destination: LoginView()) {}
                        
                        Text("Next")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color("Default"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                .padding(.horizontal, 20)
            }
        }
    }
}

#Preview {
    LoginView()
}
