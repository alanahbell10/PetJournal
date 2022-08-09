//
//  LoginView.swift
//  PetJournal
//
//  Created by Alanah Bell on 8/7/22.
//

import SwiftUI



struct LoginView: View {
    @StateObject var loginModel = LoginViewModel()
    var body: some View {
        //NavigationView{
            ZStack(alignment: .top) {
                
                myColors.main.ignoresSafeArea()
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        
                        Text("Login")
                            .font(.system(size: 40))
                            .foregroundColor(myColors.text)
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    Spacer()
                    NavigationLink(destination: JournalView()) {
                        BottomTextView(str: " * * enter * * ")
                    }
                .foregroundColor(.white)
            }
        }
    //}
}
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
