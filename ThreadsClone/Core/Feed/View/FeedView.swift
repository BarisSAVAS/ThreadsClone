//
//  ThreadsFeedView.swift
//  ThreadsClone
//
//  Created by Barış Savaş on 22.08.2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators:false){
                LazyVStack{ // Lazy olma sebebi listedeki elemanların hepsini yazdırmamak için
                    ForEach(0 ... 10 , id: \.self){threads in
                        Text("Trying threads")
                    }
                }
            }
        }
    }
}

struct ThreadsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
