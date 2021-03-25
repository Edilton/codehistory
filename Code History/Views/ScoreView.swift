//
//  ScoreView.swift
//  Code History
//
//  Created by Edilton Danniken on 25/03/21.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel

    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                Text("Final Score:")
                Text("\(viewModel.percentage) %")
                    .font(.system(size: 50))
                    .bold()
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses) ✅")
                    Text("\(viewModel.incorrectGuesses) ❌")
                }.font(.system(size: 30))
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                       HStack {
                            Spacer()
                            BottomTextView(str: "Re-take Quiz")

                       }.background(GameColor.accent)
                   }
                )
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
