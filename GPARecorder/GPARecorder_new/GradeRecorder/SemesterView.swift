//
//  SemesterView.swift
//  GradeRecorder
//
//  Created by Zihan Qiu on 4/23/23.
//

import SwiftUI

struct SemesterView: View {
    @State private var courses: [Course] = []
    @State private var addingCourse = false
    @State private var newCourseName = ""
    
    var semesterGPA: Double {
        let totalCredits = courses.reduce(0) { $0 + $1.categories.count }
        return courses.reduce(0) { $0 + Double($1.categories.count) * $1.overallGrade } / Double(totalCredits)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(courses) { course in
                        NavigationLink(destination: CourseView(course: course)) {
                            Text(course.name)
                        }
                    }.onDelete(perform: deleteCourse)
                }
                .navigationTitle("Courses")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        EditButton()
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            newCourseName = ""
                            addingCourse = true
                        }) {
                            Image(systemName: "plus")
                        }.sheet(isPresented: $addingCourse) {
                            VStack {
                                TextField("Course Name", text: $newCourseName)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                
                                Button("Add") {
                                    if !newCourseName.isEmpty {
                                        courses.append(Course(name: newCourseName, categories: []))
                                        addingCourse = false
                                    }
                                }
                            }
                        }
                    }
                }
//                Text("Semester GPA: \(semesterGPA, specifier: "%.2f")")
//                    .font(.headline)
//                    .padding()
            }
        }
    }
    
    private func addCourse() {
        courses.append(Course(name: "New Course", categories: []))
    }
    
    private func deleteCourse(at offsets: IndexSet) {
        courses.remove(atOffsets: offsets)
    }
}

struct SemesterView_Previews: PreviewProvider {
    static var previews: some View {
        SemesterView()
    }
}



