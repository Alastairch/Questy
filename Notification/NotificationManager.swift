import UserNotifications

struct NotificationManager {
    static func scheduleNotification(for quest: Quest) {
        let content = UNMutableNotificationContent()
        content.title = "Reminder: \(quest.title)"
        content.body = "Your quest is due soon!"
        content.sound = UNNotificationSound.default

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: (60 * 60 * 24), repeats: true)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

            }
        }
