//
//  ThreadsTextFieldModifier.swift
//  ThreadsClone
//
//  Created by Barış Savaş on 21.08.2023.
//
import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(12)
            .background(Color(.systemGray6))
            .padding(.horizontal ,24)
            .font(.subheadline)
            .cornerRadius(10)
    }
}
