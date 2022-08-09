//
//  LoginViewModel.swift
//  PetJournal
//
//  Created by Alanah Bell on 8/7/22.
//
import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {

    // MARK: - Published properties
    @Published private var login = Login(username: Login.myLogin.username, password: Login.myLogin.password)
    
    func correctUsername(loginCreds: String) -> Bool {
        
        if self.login.username == loginCreds {
            return true
        } else {
            print("Incorrect username")
            return false
        }
        
    }
}
