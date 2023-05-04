//
//  Category.swift
//  GradeRecorder
//
//  Created by Zihan Qiu on 4/23/23.
//

import Foundation

class GradeCategory: ObservableObject, Identifiable, Equatable {
    static func == (lhs: GradeCategory, rhs: GradeCategory) -> Bool {
        lhs.id == rhs.id
    }
    
    let id = UUID()
    @Published var name: String
    @Published var weight: Double
    @Published var grades: [Int]

    var averageGrade: Double {
        return grades.isEmpty ? 0 : Double(grades.reduce(0, +)) / Double(grades.count)
    }

    init(name: String, weight: Double, grades: [Int]) {
        self.name = name
        self.weight = weight
        self.grades = grades
    }
}
