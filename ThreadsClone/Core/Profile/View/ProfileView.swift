//
//  ProfileView.swift
//  ThreadsClone
//
//  Created by Barış Savaş on 24.08.2023.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter : ProfileThreadsFilter = .threads
    @Namespace var animation
    
    private var filterBarWidth:CGFloat{
        let count = CGFloat(ProfileThreadsFilter.allCases.count)
        return UIScreen.main.bounds.width / count-16
    }
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(spacing: 20) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading ,spacing: 12) {
                        VStack(alignment: .leading,spacing: 4){
                            Text("Charles Leclerc")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Text("charlesleclerc")
                                .font(.subheadline)
                            
                        }
                        Text("Formula 1 Driver for Scuderia Ferrari")
                            .font(.footnote)
                            
                        Text("1 followers")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    CircularProfileImageView()
                }
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352 , height: 32)
                        .background(.black)
                        .cornerRadius(8)
                }
                VStack{
                    HStack{
                        ForEach(ProfileThreadsFilter.allCases){filter in
                            VStack{
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                if selectedFilter == filter {
                                    Rectangle()
                                        .frame(width: filterBarWidth , height: 1)
                                        .foregroundColor(.black)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                }
                                else{
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width:filterBarWidth, height: 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(  .spring()){
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                    ForEach(0 ... 10 , id: \.self){threads in
                        ThreadsCell()
                    }
                }
            }
        }.padding(.horizontal)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
