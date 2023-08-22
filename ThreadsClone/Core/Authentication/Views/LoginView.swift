//
//  LoginView.swift
//  ThreadsClone
//
//  Created by Barış Savaş on 21.08.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        NavigationStack{
            
            // MARK: Logo
            VStack {
                Spacer()
                Image("threads-app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                // MARK: Email and Password
                VStack{
                    TextField("Enter your Email", text: $email)
                        .modifier(ThreadsTextFieldModifier())
                    
                    SecureField("Enter your Password" , text: $password)
                        .modifier(ThreadsTextFieldModifier())
                }
                
                
                // MARK: Forgot Password
                NavigationLink{
                    Text("Forgot Password")
                }label: {
                    Text("Forgot Password ?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity , alignment: .trailing)
                }
                // MARK: Login Button
                Button {
                    print("\(password),\(email)")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 352 , height: 44)
                        .foregroundColor(.white)
                        .background(.black)
                        .cornerRadius(8)
                }
                Spacer()
                Divider()
                
                // MARK: Sign Up
                NavigationLink {
                    RegistirationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account ?")
                        
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                        .font(.footnote)
                        .padding(.top)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity , alignment: .center)
                }
            }
        }
    }
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}
