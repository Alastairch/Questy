import Foundation

enum QuestType: String, Codable, CaseIterable {  // Add CaseIterable here
    case daily, weekly, recurring, quest
}

enum RepetitionPattern: String, Codable, CaseIterable {  // Add CaseIterable here
    case every24Hours, weekly, variable, none
}
