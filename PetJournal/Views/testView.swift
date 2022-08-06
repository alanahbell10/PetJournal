//
//  testView.swift
//  PetJournal
//
//  Created by Alanah Bell on 8/6/22.
//
import SwiftUI

struct testView: View {
    @StateObject var viewModel = TestViewModel()
    
    var body: some View {
        ZStack {
            myColors.main.ignoresSafeArea()
            VStack {
                Text("This is a test")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
            }
            .foregroundColor(.white)
            .navigationBarHidden(false)
            .environmentObject(viewModel)
        }
    }
}


struct testView_Previews: PreviewProvider {
    static var previews: some View {
        testView()
    }
}

