//
//  NoBirthdaysImage.swift
//  Greety
//
//  Created by Aneliya Mukhamedkarimova on 29/03/23.
//

import SwiftUI

struct NoBirthdaysImage: View {
    @State private var isBouncing = false
    
    var body: some View {
        Image("tea")
            .resizable()
            .frame(width: 150, height: 150)
            .scaleEffect(isBouncing ? 0.9 : 1.0)
            .animation(.spring(response: 0.5, dampingFraction: 0.5).repeatForever(autoreverses: true))
            .onAppear {
                withAnimation {
                    self.isBouncing = true
                }
            }
    }
}

struct NoBirthdaysImage_Previews: PreviewProvider {
    static var previews: some View {
        NoBirthdaysImage()
    }
}
