//
//  CourseList.swift
//  GPARecorder
//
//  Created by 林明毅 on 2023/4/9.
//

import SwiftUI

struct CourseList: View {
    @EnvironmentObject var courseListVM: CourseListViewModel
    
    var body: some View {
        
        ScrollView {
            VStack {
                HStack {
                    //header Title
                    Text("Courses")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                    Spacer()
                }
                .padding()
                
                //list of courses
                ForEach(Array(courseListVM.courses.enumerated()), id: \.element) { index, course in
                    CourseRow(course: course)
                    
                    Divider()
                        .opacity(index == 14 ? 0 : 1)
                }
            }
            .padding([.top, .bottom], 8)
            //        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        }
    }
}

struct CourseList_Previews: PreviewProvider {
    static let courseListVM: CourseListViewModel = {
        let courseListVM = CourseListViewModel()
        courseListVM.courses = courseListPreviewData
        return courseListVM
    }()
    static var previews: some View {
        CourseList()
            .environmentObject(courseListVM)
    }
}
