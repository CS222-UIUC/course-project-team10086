//
//  CourseListViewModel.swift
//  GPARecorder
//
//  Created by 林明毅 on 2023/4/9.
//

import Foundation
import SwiftUI

final class CourseListViewModel: ObservableObject {
    @Published var courses: [Course] = courseListPreviewData
    func getCourses() -> [Course] {
        return courseListPreviewData
    }
}
