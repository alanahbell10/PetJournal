//
//  testView.swift
//  PetJournal
//
//  Created by Alanah Bell on 8/6/22.
//
import SwiftUI
import Foundation.NSDate


struct JournalView: View {
    @StateObject var journalModel = JournalViewModel()
    @State private var contentSize: CGSize = .zero
    
    @State var petname: String = ""
    @State var breed: String = ""
    @State var age: Int = 0
    @State var birthday: Date = (NSDate() as Date)
    let currentDate = NSDate()
    
    //use https://www.waldo.com/blog/swiftui-form-101
    
    
    
    var body: some View {
        ZStack(alignment: .top) {
            myColors.main.ignoresSafeArea()
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Form {
                        Section(header: Text("Your Pet's Information")) {
                            TextField("Name: ", text: $petname)
                            TextField("Breed: ", text: $breed)
                            TextField("Age: ", text: Binding(
                                get: { String(age) },
                                set: { age = Int($0) ?? 0 }
                            ))
                        }
                    }
                }
                Spacer()
                Spacer()
                NavigationLink(destination: WelcomeView()) {
                    BottomTextView(str: "test")
                }
                .font(.system(size: 40))
                .foregroundColor(myColors.text)
                .multilineTextAlignment(.leading)
                .padding()
            }
        }
    }
}
        


struct testView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}


