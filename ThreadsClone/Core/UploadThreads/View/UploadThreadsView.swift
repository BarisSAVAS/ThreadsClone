//
//  UploadThreadsView.swift
//  ThreadsClone
//
//  Created by Barış Savaş on 24.08.2023.
//

import SwiftUI

struct UploadThreadsView: View {
    @State private var caption = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack(alignment:.top){
                    CircularProfileImageView()
                    VStack(alignment: .leading , spacing: 4){
                        //MARK: UserName
                        Text("maxverstappen1")
                            .fontWeight(.semibold)
                        
                        TextField("Start a Threads", text: $caption , axis: .vertical)
                            
                        }
                    
                    Spacer()
                    if !caption.isEmpty{ //eğer caption boş değilse
                        Button {
                            caption = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width:12 , height: 12)
                                .foregroundColor(.gray)
                        }
                    }
                    }
                Spacer()
            }
            .padding()
            .navigationTitle("New Threads")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem (placement: .navigationBarLeading){
                    Button("Cancel"){
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
            }
            .toolbar {
                ToolbarItem (placement: .navigationBarTrailing){
                    Button("Post"){
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1.0)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                }
            }

        }
    }
}

struct UploadThreadsView_Previews: PreviewProvider {
    static var previews: some View {
        UploadThreadsView()
    }
}
