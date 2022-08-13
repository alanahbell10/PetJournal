//
//  testView.swift
//  PetJournal
//
//  Created by Alanah Bell on 8/6/22.
//
import SwiftUI
import Foundation.NSDate
import UIKit.UIButton


struct JournalView: View {
    @StateObject var journalModel = JournalViewModel()
    @State private var contentSize: CGSize = .zero
    
    @State var petname: String = ""
    @State var breed: String = ""
    @State var age: String = ""
    @State var weight: String = ""
    //@State var age: Int = 0
    @State var birthday: Date = (NSDate() as Date)
    @State var isPrivate: Bool = true
    
    //Tricks
    @State var sit: Trick = Trick(name: "Sit", desc: "", learned: false)
    @State var speak: Trick = Trick(name: "Speak", desc: "", learned: false)
    @State var highFive: Trick = Trick(name: "High Five", desc: "", learned: false)
    @State var shake: Trick = Trick(name: "Shake", desc: "", learned: false)
    @State var stay: Trick = Trick(name: "Stay", desc: "", learned: false)
    
    @State var tricks: [Trick] = []
   

    
    
    
    
    let currentDate = NSDate()
    
    func register() {
        print("Button is tapped")
    }
    
    //use https://www.waldo.com/blog/swiftui-form-101
    
    
    
    var body: some View {
        ZStack(alignment: .top) {
            myColors.main.ignoresSafeArea()
            
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    
                    Form {
                        Section(header: Text("Your Pet's Information").foregroundColor(.black)) {
                            TextField("Name: ", text: $petname)
                            TextField("Breed: ", text: $breed)
                            TextField("Age: ", text: $age)
                            TextField("Weight: ", text: $weight)
                            
                            /*Picker("Tricks", selection: $knownTricks) {
                             Text(sit)
                             Text(stay)
                             Text(highFive)
                             }.pickerStyle(SegmentedPickerStyle())*/
                        }
                        //.foregroundColor(myColors.accent)
                        Section(header: Text("Known Tricks: ").foregroundColor(.black)) {
                            
                            
                            Toggle(sit.name, isOn: $sit.learned)
                            Toggle(speak.name, isOn: $speak.learned)
                            Toggle(highFive.name, isOn: $highFive.learned)
                            Toggle(shake.name, isOn: $shake.learned)
                            Toggle(stay.name, isOn: $stay.learned)
                           
                        }
                        
                    }
                    .navigationBarTitle("Pet Form")
                }
                Spacer()
                Spacer()
                NavigationLink(destination: WelcomeView()) {
                    BottomTextView(str: "Register Pet")
                }
                .font(.system(size: 40))
                .foregroundColor(myColors.text)
                .multilineTextAlignment(.leading)
                .padding()
            }
            .foregroundColor(myColors.accent)
        }
    }
}
        


struct testView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}


