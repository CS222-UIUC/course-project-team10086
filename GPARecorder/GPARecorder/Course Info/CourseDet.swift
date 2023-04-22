//
//  CourseList.swift
//  GPARecorder
//
//  Created by 林明毅 on 2023/4/9.
//

import SwiftUI

struct CourseDet: View {
    @EnvironmentObject var cou : CourseDetViewModel

    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    //header Title
                    Text(cou.course.name)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                    Spacer()
                }
                .padding()
                
                //list all type and weight
                HStack {
//                    for cat in cou.course.categories {
//
//                    }
                }
            }
            .padding([.top, .bottom], 8)
            //        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        }
    }
}

struct CourseDet_Previews: PreviewProvider {
    static let cou : CourseDetViewModel = {
        let cou = CourseDetViewModel()
        cou.course = coursePreviewData
        return cou
    }()
    static var previews: some View {
        CourseDet()
            .environmentObject(cou)
    }
}
