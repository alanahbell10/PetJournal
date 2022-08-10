//
//  testView.swift
//  PetJournal
//
//  Created by Alanah Bell on 8/6/22.
//
import SwiftUI

struct JournalView: View {
    @StateObject var journalModel = JournalViewModel()
    
    var body: some View {
            ZStack {
                myColors.main.ignoresSafeArea()
                VStack() {
                    ScrollView{
                        VStack {
                            /*Text("Item \($0)")
                                .foregroundColor(.white)
                             Image("sqMoon")  .font(.largeTitle)
                                .frame(width: 200, height: 200)
                                .background(.red)*/
                            Image(uiImage: journalModel.testJournal1.entries[0].picture)
                            Text(journalModel.testJournal1.entries[0].caption)
                        }
                        .navigationBarHidden(false)
                        .environmentObject(journalModel)
                        .border(myColors.accent, width: 2)
                        .background(myColors.main)
                        
                        VStack {
                            Image(uiImage: journalModel.testJournal1.entries[1].picture)
                            Text(journalModel.testJournal1.entries[1].caption)
                        }
                        .navigationBarHidden(false)
                        .environmentObject(journalModel)
                        .border(myColors.accent, width: 2)
                        
                        VStack {
                            Image(uiImage: journalModel.testJournal1.entries[2].picture)
                            Text(journalModel.testJournal1.entries[2].caption)
                        }
                        .navigationBarHidden(false)
                        .environmentObject(journalModel)
                        .border(myColors.accent, width: 2)
                    }
                }
            }
        }
    }
        


struct testView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}

