//
//  CircularProfileImageView.swift
//  ThreadsClone
//
//  Created by Barış Savaş on 26.08.2023.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("max-verstappen")
            .resizable()
            .scaledToFill()
            .frame(width: 50 ,height: 50)
            .clipShape(Circle())
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView()
    }
}
