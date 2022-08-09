//
//  testView.swift
//  PetJournal
//
//  Created by Alanah Bell on 8/6/22.
//
import SwiftUI

struct JournalView: View {
    @StateObject var journalView = JournalViewModel()
    
    var body: some View {
        ScrollView {
            ZStack {
                //myColors.main.ignoresSafeArea()
                VStack() {
                    HStack {
                        /*Text("Item \($0)")
                            .foregroundColor(.white)
                         Image("sqMoon")  .font(.largeTitle)
                            .frame(width: 200, height: 200)
                            .background(.red)*/
                        
                        Image("sqMoon")
                        
                    }
                    .foregroundColor(.white)
                    .navigationBarHidden(false)
                    .environmentObject(journalView)
                    .padding(70)
                    HStack {
                        /*Text("Item \($0)")
                            .foregroundColor(.white)
                         Image("sqMoon")  .font(.largeTitle)
                            .frame(width: 200, height: 200)
                            .background(.red)*/
                        
                        Image("sqMoon")
                        
                    }
                    .foregroundColor(.white)
                    .navigationBarHidden(false)
                    .environmentObject(journalView)
                    .padding(70)
                    HStack {
                        /*Text("Item \($0)")
                            .foregroundColor(.white)
                         Image("sqMoon")  .font(.largeTitle)
                            .frame(width: 200, height: 200)
                            .background(.red)*/
                        
                        Image("sqMoon")
                        
                    }
                    .foregroundColor(.white)
                    .navigationBarHidden(false)
                    .environmentObject(journalView)
                    .padding(70)
                
                }
                .background(.red)
            }
        }
    }
}
        


struct testView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}

