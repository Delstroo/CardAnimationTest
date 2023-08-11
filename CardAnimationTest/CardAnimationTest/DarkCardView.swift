//
//  DarkCardView.swift
//  CardAnimationTest
//
//  Created by Delstun McCray on 8/11/23.
//

import SwiftUI

struct DarkCardView: View {
    @State var rotatation: CGFloat = 0.0
    var body: some View {
        ZStack {
            Color(red: 0.1216, green: 0.1176, blue: 0.1255)
            RoundedRectangle(cornerRadius: 20, style: .circular)
                .frame(width: 260, height: 340)
                .foregroundColor(Color(red: 0.0824, green: 0.0784, blue: 0.0824))
                .shadow(color: .black, radius: 10, x: 0, y: 0)
            RoundedRectangle(cornerRadius: 20, style: .circular)
                .frame(width: 500, height: 200)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.green.opacity(0.8), .accentColor.opacity(0.8), .red.opacity(0.8)]), startPoint: .top, endPoint: .bottom))
                .rotationEffect(.degrees(rotatation))
                .mask {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(lineWidth: 4)
                        .frame(width: 256, height: 336)
                }
            Text("Card").bold()
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .ignoresSafeArea()
        .onAppear{
            withAnimation(.linear(duration: 4).repeatForever(autoreverses: false)) {
                rotatation = 360
            }
        }
    }
}

struct DarkCardView_Previews: PreviewProvider {
    static var previews: some View {
        DarkCardView()
    }
}
