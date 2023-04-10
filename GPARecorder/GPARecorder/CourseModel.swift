//
//  CourseModel.swift
//  GPARecorder
//
//  Created by 林明毅 on 2023/3/3.
//

import Foundation

struct Course : Identifiable, Hashable {
    let id: Int
    let name: String
    var categories: Array<String> = Array()
    var weights: Array<Float> = Array()
    var grade: Float
}
