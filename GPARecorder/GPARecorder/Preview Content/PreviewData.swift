//
//  PreviewData.swift
//  GPARecorder
//
//  Created by 林明毅 on 2023/3/3.
//

import Foundation
import SwiftUI

var coursePreviewData = Course(id: 1, name: "cs222",categories: ["Weekly Review", "Final Presentation", "Project Proposal", "Checkpoints", "Intro Assignments"], weights: [0.6, 0.15, 0.1, 0.1, 0.05], grade: 90.75)

//var courseListPreviewData = [Course](repeating: coursePreviewData, count: 15)


var course1 = Course(id: 1, name: "cs222",categories: ["Weekly Review", "Final Presentation", "Project Proposal", "Checkpoints", "Intro Assignments"], weights: [0.6, 0.15, 0.1, 0.1, 0.05], grade: 90.75)
var course2 = Course(id: 2, name: "cs128",categories: ["MP", "Daily Quiz"], weights: [0.8, 0.2], grade: 95)
var course3 = Course(id: 3, name: "cs124",categories: ["MP", "Daily Program", "Midterm"], weights: [0.2, 0.5, 0.3], grade: 92)

var courseListPreviewData = [course1, course2, course3]
