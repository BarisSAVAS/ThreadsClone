//
//  ExploreView.swift
//  ThreadsClone
//
//  Created by Barış Savaş on 24.08.2023.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 10, id : \.self) { user in
                        ExploreCell()
                        Divider()
                    }.padding(.vertical ,4)
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText , prompt: "Search")
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
