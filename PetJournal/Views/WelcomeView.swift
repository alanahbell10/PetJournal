//
//  WelcomeView.swift
//  PetJournal
//
//  Created by Alanah Bell on 8/6/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView{
            ZStack(alignment: .top) {
                Image(uiImage: #imageLiteral(resourceName: "moon.jpeg"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                //GameColor.main.ignoresSafeArea()
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        
                        Text("Rosie")
                            .font(.system(size: 40))
                            .foregroundColor(myColors.text)
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    Spacer()
                    NavigationLink(destination: LoginView()) {
                        BottomTextView(str: " * * Log In * * ")
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
}
