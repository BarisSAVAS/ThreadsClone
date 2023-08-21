//
//  RegistirationView.swift
//  ThreadsClone
//
//  Created by Barış Savaş on 21.08.2023.
//

import SwiftUI

struct RegistirationView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var fullname: String = ""
    @State private var username: String = ""
    
    var body: some View {
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
                
                TextField("Enter your Full name", text: $fullname)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your Username", text: $username)
                    .modifier(ThreadsTextFieldModifier())
            }
            Button {
                print("Sign up buttons activated")
            } label: {
                Text("Sign up")
                    .frame(width: 352 , height: 44)
                    .foregroundColor(.white)
                    .background(Color(.black))
                    .font(.subheadline)
                    .cornerRadius(8)
            }
            .padding(.vertical)
           
            Spacer()
            Divider()
            Button {
                print("Sign in button activated")
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
            }.padding(.vertical ,16)
        }
    }
    
    struct RegistirationView_Previews: PreviewProvider {
        static var previews: some View {
            RegistirationView()
        }
    }
}
