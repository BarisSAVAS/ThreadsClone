//
//  ExploreCell.swift
//  ThreadsClone
//
//  Created by Barış Savaş on 26.08.2023.
//

import SwiftUI

struct ExploreCell: View {
    var body: some View {
        HStack{
            CircularProfileImageView()
            VStack{
                Text("max verstappen1")
                    .fontWeight(.bold)
                Text("Max verstappen")
            }.font(.footnote)
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100 , height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4),lineWidth: 1)
                }
        }.padding(.horizontal)
        }
    }
struct ExploreCell_Previews: PreviewProvider {
    static var previews: some View {
        ExploreCell()
    }
}
