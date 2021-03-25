//
//  ContentView.swift
//  Code History
//
//  Created by Edilton Danniken on 16/03/21.
//

import SwiftUI

struct GameView: View {

    
    @StateObject var viewModel = GameViewModel()

    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundColor(.white)
        .navigationBarHidden(true) 
        .environmentObject(viewModel)
        .background(
            NavigationLink(
                destination: ScoreView(viewModel: ScoreViewModel(
                                        correctGuesses: viewModel.correctGuesses,
                                        incorrectGuesses: viewModel.incorrectGuesses
                                    )
                ),
                isActive: .constant(viewModel.gameIsOver),
                label: {
                    EmptyView()
                })
        )
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
