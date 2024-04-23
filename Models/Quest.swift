import Foundation

struct Quest: Codable {
    var title: String
    var type: QuestType
    var repetitionPattern: RepetitionPattern
    var timePeriod: String?
    var subtasks: [Subtask]
}

struct TimePeriod: Codable {
    var description: String
}
