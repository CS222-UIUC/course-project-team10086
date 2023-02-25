//
//  ContentView.swift
//  GPARecorder
//
//  Created by Mengqi Lin on 2/24/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Welcome to GPA Recorder from Team 10086")
        }.font(.title)
            .padding();
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
