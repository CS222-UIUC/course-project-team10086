//
//  PreviewData.swift
//  GPARecorder
//
//  Created by 林明毅 on 2023/3/3.
//

import Foundation
import SwiftUI

var coursePreviewData = Course(id: 1, name: "cs222",categories: ["Weekly Review", "Final Presentation", "Project Proposal", "Checkpoints", "Intro Assignments"], weights: [0.6, 0.15, 0.1, 0.1, 0.05], grade: 90.75)

var courseListPreviewData = [Course](repeating: coursePreviewData, count: 2)
