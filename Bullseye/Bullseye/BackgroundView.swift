//
//  BackgroundView.swift
//  Bullseye
//
//  Created by AMStudent on 8/31/21.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    
    var body: some View {
        VStack {
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }
        .padding()
        }
    }
    
struct TopView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack {
            Button(action: {
                game.restart()
            }) {
            RoundImageViewStroked(myImage: "arrow.counterclockwise")
            }
            Spacer()
        }
    }
}

struct NumberView: View {
    var title: String
    var text: String
    
    var body: some View {
        VStack(spacing: 5) {
            LabelText(text:title)
            RoundedRectTextView(text: text)
        }
    }
}
struct BottomView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack {
            NumberView(title: "SCORE", text: String(game.score)); Spacer()
            NumberView(title: "SCORE", text: String(game.round))
        }
    }
    
struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
}

