//
//  CourseView.swift
//  GradeRecorder
//
//  Created by Zihan Qiu on 4/23/23.
//
import SwiftUI

struct CourseView: View {
    @ObservedObject var course: Course
    @State private var addingCategory = false
    @State private var newCategoryName = ""
    @State private var newCategoryWeight: Double = 0.0
    
    var body: some View {
        VStack {
            List {
                ForEach(course.categories) { category in
                    NavigationLink(destination: CategoryDetailView(category: category)) {
                        HStack {
                            Text(category.name)
                            Spacer()
                            Text("Weight: \(category.weight, specifier: "%.1f")%")
                        }
                    }
                }.onDelete(perform: deleteCategory)
            }
            Text("Course Grade: \(course.overallGrade, specifier: "%.2f")")
                .font(.headline)
                .padding()
            .navigationTitle(course.name)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        newCategoryName = ""
                        newCategoryWeight = 0.0
                        addingCategory = true
                    }) {
                        Image(systemName: "plus")
                    }.sheet(isPresented: $addingCategory) {
                        VStack {
                            TextField("Category Name", text: $newCategoryName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding() // Move the closing parenthesis here
                            TextField("Category Weight", value: $newCategoryWeight, formatter: NumberFormatter())
                                .keyboardType(.decimalPad)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                                
                                Button("Add") {
                                    if !newCategoryName.isEmpty && newCategoryWeight >= 0 && newCategoryWeight <= 100 {
                                        course.categories.append(GradeCategory(name: newCategoryName, weight: newCategoryWeight, grades: []))
                                        addingCategory = false
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        
        private func addCategory() {
            course.categories.append(GradeCategory(name: "New Category", weight: 1.0, grades: []))
        }
        
        private func deleteCategory(at offsets: IndexSet) {
            course.categories.remove(atOffsets: offsets)
        }
    }

    struct CourseView_Previews: PreviewProvider {
        static var previews: some View {
            CourseView(course: Course(name: "Math", categories: []))
        }
    }
