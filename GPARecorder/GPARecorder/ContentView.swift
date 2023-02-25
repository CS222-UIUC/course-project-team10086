//
//  ContentView.swift
//  GPARecorder
//
//  Created by Mengqi Lin on 2/24/23.
//

import SwiftUI

class uniTestContent:ObservableObject {
    @Published var viewed : Bool
    
    init(viewed: Bool) {
        self.viewed = viewed
    }
}

struct ContentView: View {
    
    @StateObject private var vm : uniTestContent
    
    init(viewed:Bool) {
        _vm = StateObject(wrappedValue: uniTestContent(viewed: viewed))
    }
    
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Welcome to GPA Recorder")

//add new title info
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Welcome to GPA")
            Text("Recorder by team 10086")
        }.font(.title)
            .padding();
        
        
        
    }
    
}

struct RandomContent: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Random Text Here")
        }.font(.title)
            .padding();
        
        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
