//
//  WelcomeView.swift
//  Code History
//
//  Created by Edilton Danniken on 23/03/21.
//

import SwiftUI

struct WelcomeView: View {
    let accentColor = GameColor.accent
    let mainColor = GameColor.main
    var body: some View {
        NavigationView {
            ZStack {
              mainColor.ignoresSafeArea()
              VStack {
                Spacer()
                VStack(alignment: .leading, spacing: 0) {
                    Text("Select the correct answers to the following questions.")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .padding()
                }
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                       HStack {
                            Spacer()
                            BottomTextView(str: "Okay let's go!")

                       }.background(accentColor)
                   }
                )
                
              }
              .foregroundColor(.white)
          }
        
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
