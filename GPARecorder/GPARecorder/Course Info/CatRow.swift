//
//  CourseRow.swift
//  GPARecorder
//
//  Created by 林明毅 on 2023/3/3.
//

import SwiftUI

struct CatRow: View {
    var course: Course
    let cates = course.categories
    var body: some View {
        HStack(spacing: 50) {
            VStack(alignment: .leading, spacing: 5) {
                ForEach(cates) { cate in cates
                    
                }
        }
        .padding([.top, .bottom], 8)
    }
}

//func categoryToLine(input: Array<String>) -> String {
//    var result = ""
//    for str in input {
//        result += str
//        result += ", "
//    }
//    return result
//}
//
//func gradeDisplay(input: Float) -> String {
//    let result = "\(input)%"
//    return result
//}



struct CatRow_Previews: PreviewProvider {
    static var previews: some View {
       CatRow(course: coursePreviewData)
    }
}
