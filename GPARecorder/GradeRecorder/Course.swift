//
//  Course.swift
//  GradeRecorder
//
//  Created by Zihan Qiu on 4/23/23.
//

import Foundation

class Course: ObservableObject, Identifiable, Equatable {
    static func == (lhs: Course, rhs: Course) -> Bool {
        lhs.id == rhs.id
    }

    let id = UUID()
    @Published var name: String
    @Published var categories: [GradeCategory]

    init(name: String, categories: [GradeCategory]) {
        self.name = name
        self.categories = categories
    }
    
    var overallGrade: Double {
        let totalWeight = categories.reduce(0) { $0 + $1.weight }
        return categories.reduce(0) { $0 + ($1.weight / totalWeight) * $1.averageGrade }
    }
}

