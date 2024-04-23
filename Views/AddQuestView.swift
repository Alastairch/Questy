// Correct structure name in AddQuestView.swift
import SwiftUI

struct AddQuestView: View {
    @Binding var quests: [Quest]
    @State private var title = ""
    @State private var type = QuestType.quest
    @State private var repetitionPattern = RepetitionPattern.none
    @State private var deadline: Date?
    @State private var subtasks: [Subtask] = []
    @State private var collaborators: [String] = []
    @State private var newSubtaskTitle = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Form {
            TextField("Quest Title", text: $title)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .fixedSize(horizontal: false, vertical: true)
            Picker("Type", selection: $type) {
                ForEach(QuestType.allCases, id: \.self) { type in
                    Text(type.rawValue).tag(type as QuestType?)
                }
            }
            Picker("Repetition", selection: $repetitionPattern) {
                ForEach(RepetitionPattern.allCases, id: \.self) { pattern in
                    Text(pattern.rawValue).tag(pattern as RepetitionPattern?)
                }
            }
            // Additional UI components here...
        }
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Save") {
                    let newQuest = Quest(title: title, type: type, repetitionPattern: repetitionPattern, timePeriod: nil, subtasks: subtasks)
                    quests.append(newQuest)
                    dismiss()
                }
            }
        }
        .navigationTitle("Add New Quest")
    }
}
