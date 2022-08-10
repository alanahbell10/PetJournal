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
    
    func correctUser(user: String) -> Bool {
        if self.login.username == user {
            return true
        } else {
            print("Incorrect username. You typed: \(user)")
            return false
        }
    }
    
    func correctPassword(pass: String) -> Bool {
        if self.login.password == pass {
            return true
        } else {
            print("Incorrect password. You typed: \(pass)")
            return false
        }
    }
    
    func correctLogin(validUser: Bool, validPass: Bool) -> Bool{
        if (validUser == true && validPass == true) {
            print("Valid login")
            return true
        } else {
            print("Invalid login-> user: \(validUser) pass: \(validPass)")
            return false
        }
    }
    
}
