//
//  CategoryDetailView.swift
//  GradeRecorder
//
//  Created by Zihan Qiu on 4/23/23.
//
import SwiftUI

struct CategoryDetailView: View {
    @ObservedObject var category: GradeCategory
    @State private var newGrade: String = ""
    @State private var editingName = false
    @State private var editingWeight = false
    
    var averageGrade: Double {
        return category.grades.isEmpty ? 0 : Double(category.grades.reduce(0, +)) / Double(category.grades.count)
    }
    
    var body: some View {
        VStack {
            List {
                ForEach(category.grades, id: \.self) { grade in
                    Text("Grade: \(grade)")
                }
                .onDelete(perform: deleteGrade)
            }
            
            HStack {
                TextField("Enter new grade", text: $newGrade)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: addGrade) {
                    Text("Add Grade")
                }
            }.padding()
            
            Text("Average Grade: \(averageGrade, specifier: "%.2f")")
                .font(.headline)
                .padding()
            
        }
        .navigationTitle(category.name)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    editingName.toggle()
                }) {
                    Text("Edit Name")
                }.sheet(isPresented: $editingName) {
                    VStack {
                        TextField("Category Name", text: $category.name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        Button("Done") {
                            editingName = false
                        }
                    }
                }
                
                Button(action: {
                    editingWeight.toggle()
                }) {
                    Text("Edit Weight")
                }.sheet(isPresented: $editingWeight) {
                    VStack {
                        TextField("Category Weight", value: $category.weight, formatter: NumberFormatter())
                            .keyboardType(.decimalPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        Button("Done") {
                            editingWeight = false
                        }
                    }
                }
            }
        }
    }
    
    private func addGrade() {
        if let gradeInt = Int(newGrade), gradeInt >= 0 && gradeInt <= 100 {
            category.grades.append(gradeInt)
            newGrade = ""
        }
    }
    
    private func deleteGrade(at offsets: IndexSet) {
        category.grades.remove(atOffsets: offsets)
    }
}

