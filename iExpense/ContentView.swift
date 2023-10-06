//
//  ContentView.swift
//  iExpense
//
//  Created by Dennis Mutwiri Mugambi on 06/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        
        Button("Tap count: \(tapCount)") {
                    tapCount += 1
                }
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
