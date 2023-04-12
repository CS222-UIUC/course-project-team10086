//
//  CourseDetViewModel.swift
//  GPARecorder
//
//  Created by 林明毅 on 2023/4/11.
//

import Foundation
import SwiftUI

final class CourseDetViewModel: ObservableObject {
    @Published var course: Course = coursePreviewData
    func getCourse() -> Course {
        return coursePreviewData
    }
}
