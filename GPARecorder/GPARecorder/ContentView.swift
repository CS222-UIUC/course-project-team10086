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
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    //Title
                    Text("Welcome to GPA Recorder")
                        .font(.title2)
                        .bold()
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            .background(Color.background)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                //Add course Icon
                ToolbarItem {
                    Image(systemName: "plus")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.icon, .primary)
                }
            }
        }
        .navigationViewStyle(.stack)
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
