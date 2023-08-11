//
//  ContentView.swift
//  CardAnimationTest
//
//  Created by Delstun McCray on 8/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var rotatation: CGFloat = 0.0
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .circular)
                .frame(width: 260, height: 340)
                .foregroundColor(Color(.darkGray))
            RoundedRectangle(cornerRadius: 20, style: .circular)
                .frame(width: 130, height: 500)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.green, .accentColor, .red]), startPoint: .top, endPoint: .bottom))
                .rotationEffect(.degrees(rotatation))
                .mask {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(lineWidth: 7)
                        .frame(width: 256, height: 336)
                }
            Text("Card").bold()
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .onAppear{
            withAnimation(.linear(duration: 4).repeatForever(autoreverses: false)) {
                rotatation = 360
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
