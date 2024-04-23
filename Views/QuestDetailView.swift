import SwiftUI

struct QuestDetailView: View {
    @State var quest: Quest
    
    var body: some View {
        VStack {
            Text(quest.title)
            Text("Repeats: \(quest.repetitionPattern.rawValue)")
            if let timePeriod = quest.timePeriod {
                Text("Schedule: \(timePeriod)")
            }
            List(quest.subtasks, id: \.title) { subtask in
                Text(subtask.title)
            }
            Button("Complete Quest") {
                // Complete quest logic
            }
        }
    }
}
