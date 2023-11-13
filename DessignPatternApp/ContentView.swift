//
//  ContentView.swift
//  DessignPatternApp
//
//  Created by Taras Chernysh on 12.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    let coreManager = CoreManager.shared
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            coreManager.run()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
