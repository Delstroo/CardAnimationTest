//
//  GlowCardView.swift
//  CardAnimationTest
//
//  Created by Delstun McCray on 8/11/23.
//

import SwiftUI

struct GlowCardView: View {
    @State var rotatation: CGFloat = 0.0
    var body: some View {
        ZStack {
            Color(red: 0.1216, green: 0.1176, blue: 0.1255)
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width:440, height: 430)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.red,.orange,.yellow,.green,.cyan,.blue,.purple,.pink]), startPoint: .top, endPoint: .bottom))
                .rotationEffect(.degrees(rotatation))
                .mask {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(lineWidth: 3)
                        .frame(width: 250, height: 335)
                        .blur(radius: 10)
                }
            
            RoundedRectangle(cornerRadius: 20, style: .circular)
                .frame(width: 260, height: 340)
                .foregroundColor(Color(red: 0.0824, green: 0.0784, blue: 0.0824))
                .shadow(color: .black, radius: 20, x: 0, y: 0)
            RoundedRectangle(cornerRadius: 20, style: .circular)
                .frame(width: 500, height: 440)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.red,.orange,.yellow,.green,.cyan,.blue,.purple,.pink]), startPoint: .top, endPoint: .bottom))
                .rotationEffect(.degrees(rotatation))
                .mask {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(lineWidth: 3)
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

struct GlowCardView_Previews: PreviewProvider {
    static var previews: some View {
        GlowCardView()
    }
}
