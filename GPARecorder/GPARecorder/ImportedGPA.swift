//
//  ImportedGPA.swift
//  GPARecorder
//
//  Created by Kaifeng Lin on 3/24/23.
//

import SwiftUI

struct ImportedGPA: View {
    
    var calculatedGPA: Double
    
    var body: some View {
        VStack {
            Text("Your calculated GPA is:")
                .font(.headline)
            Text(String(format: "%.2f", calculatedGPA))
                .font(.largeTitle)
                .fontWeight(.bold)
        }
    }
    
}



struct GPAView_Previews: PreviewProvider {
    static var previews: some View {
        ImportedGPA(calculatedGPA: 3.45)
    }
}
