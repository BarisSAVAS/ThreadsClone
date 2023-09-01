//
//  EditProfileView.swift
//  ThreadsClone
//
//  Created by Barış Savaş on 30.08.2023.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio:String = ""
    @State private var link:String = ""
    @State private var isPrivate:Bool = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom , .horizontal])
                
                VStack {
                    //MARK: Name and Profile Image
                    HStack{
                        VStack(alignment: .leading){
                            Text("Name")
                                .fontWeight(.semibold)
                            Text("Max Verstappen")
                        }
                        Spacer()
                        CircularProfileImageView()
                    }
                    Divider()
                    //MARK: Bio
                    HStack{
                        VStack(alignment: .leading){
                            Text("Bio")
                                .fontWeight(.semibold)
                            TextField("Add your Bio...", text: $bio ,axis: .vertical)
                        }
                    }
                    Divider()
                    //MARK: Link
                    HStack{
                        VStack(alignment:.leading){
                            Text("Link")
                                .fontWeight(.semibold)
                            TextField("Add your Link...", text: $link)
                        }
                    }
                    Divider()
                    //MARK: Private Profile
                    Toggle("Private Profile", isOn: $isPrivate)
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth:1)
                }.padding()
                
                .navigationTitle("Edit Profile")
                .navigationBarTitleDisplayMode(.inline)
                }
                .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel"){
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Done"){
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                }
            }
        }
    }
    
    struct EditProfileView_Previews: PreviewProvider {
        static var previews: some View {
            EditProfileView()
        }
    }
}
