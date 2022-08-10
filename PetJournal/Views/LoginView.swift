//
//  LoginView.swift
//  PetJournal
//
//  Created by Alanah Bell on 8/7/22.
//

import SwiftUI



struct LoginView: View {
    @StateObject var loginModel = LoginViewModel()
    
    @State var username: String = ""
    @State var password: String = ""
    
    @State var isValid: Bool = false
    
    var body: some View {
        //NavigationView{
            ZStack(alignment: .top) {
                
                myColors.main.ignoresSafeArea()
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        
                        Form {
                            Section(header: Text("Your Details")) {
                                TextField("Username", text: $username)
                                TextField("Password", text: $password)
                            }
                        }
                    }
                    Spacer()
                    Spacer()
                    NavigationLink(destination: JournalView()) {
                        BottomTextView(str: "Login")
                    }.disabled(!(loginModel.correctLogin(validUser: loginModel.correctUser(user: username), validPass: loginModel.correctPassword(pass: password))))
                        .font(.system(size: 40))
                        .foregroundColor(myColors.text)
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    
                    
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
