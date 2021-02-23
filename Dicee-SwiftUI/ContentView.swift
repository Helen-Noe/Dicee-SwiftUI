//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Thin Myat Noe on 23/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ZStack{
			Image("background")
				.resizable()
				.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
			VStack {
				Image("diceeLogo")
				Spacer()
				HStack{
					DiceView(n: 1)
					DiceView(n: 2)
				}
				.padding(.horizontal)
				Spacer()
				Button(action: {
					
				}) {
					Text("ROLL")
						.font(.system(size: 35))
						.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
						.foregroundColor(.white)
						.padding()
						
				}
				.background(Color(red: 0.61, green: 0.11, blue: 0.12, opacity: 1.0))
				Spacer()
			}
		}
    }
}

struct DiceView: View {
	let n: Int
	var body: some View {
		Image("dice\(n)")
			.resizable()
			.aspectRatio(1, contentMode: .fit)
			.padding()
	}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

