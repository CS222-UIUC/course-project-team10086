//
//  CourseRow.swift
//  GPARecorder
//
//  Created by Mingyi, Lin on 2023/3/3.
//

import SwiftUI

struct CourseRow: View {
    var course: Course
    var body: some View {
        HStack(spacing: 50) {
            VStack(alignment: .leading, spacing: 5) {
                //course Name
                Text(course.name)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                //course grade
                Text(categoryToLine(input: course.categories))
                    .font(.footnote)
                    .opacity(0.6)
                    .lineLimit(1)
                    .italic()
                    .frame(width: 250)
            }
            //coures grade
            Text(gradeDisplay(input: course.grade))
                .bold()
        }
        .padding([.top, .bottom], 8)
    }
}

func categoryToLine(input: Array<String>) -> String {
    var result = ""
    for str in input {
        result += str
        result += ", "
    }
    return result
}

func gradeDisplay(input: Float) -> String {
    var result = "\(input)%"
    return result
}



struct CourseRow_Previews: PreviewProvider {
    static var previews: some View {
        CourseRow(course: coursePreviewData)
    }
}
