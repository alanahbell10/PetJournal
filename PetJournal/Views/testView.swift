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
        ScrollView {
            ZStack {
                //myColors.main.ignoresSafeArea()
                VStack(spacing: 20) {
                    ForEach(0..<10) {
                        /*Text("Item \($0)")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 200, height: 200)
                            .background(.red)*/
                        Text("\($0)")
                        Image("testImage")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 200, height: 200)
                            .background(.red)
                    }
                    .frame(height: 350)
                    .foregroundColor(.white)
                    .navigationBarHidden(false)
                    .environmentObject(viewModel)
                
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
    }
}
        


struct testView_Previews: PreviewProvider {
    static var previews: some View {
        testView()
    }
}

