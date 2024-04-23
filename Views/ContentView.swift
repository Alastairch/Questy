import SwiftUI

struct ContentView: View {
    @State private var quests: [Quest] = []
    @State private var showingAddQuest = false

    var body: some View {
        NavigationView {
            List(quests, id: \.title) { quest in
                NavigationLink(destination: QuestDetailView(quest: quest)) {
                    Text(quest.title)
                }
            }
            .toolbar {
                Button(action: {
                    self.showingAddQuest = true
                }) {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddQuest) {
                AddQuestView(quests: $quests)
            }
            .navigationTitle("Quest Log")
        }
    }
}
