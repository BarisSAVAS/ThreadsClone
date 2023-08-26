//
//  ThreadsCell.swift
//  ThreadsClone
//
//  Created by Barış Savaş on 26.08.2023.
//

import SwiftUI

struct ThreadsCell: View {
    var body: some View {
        VStack{
            HStack(alignment: .top , spacing: 12){
                
                //MARK: Profile Image
                CircularProfileImageView()
                    //.padding(.leading)
                VStack(alignment: .leading, spacing: 4){
                    // MARK: Tweets Top section
                    HStack{
                        Text("maxverstappen")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Spacer()
                        Text("10 min")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }//.padding(.trailing)
                    }
                    // MARK: Tweet
                    Text("Max verstappen is Formula 1 Champions")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    // MARK: Button
                    HStack(){
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .padding(.vertical)
                    .foregroundColor(.black)
                }
            }
            Divider()
        }.padding()
    }
    
    struct ThreadsCell_Previews: PreviewProvider {
        static var previews: some View {
            ThreadsCell()
        }
    }
}
