import Foundation

extension Analytics {
    static func track(_ event: AnalyticsEvent, story: EndOfYearStory) {
        Analytics.track(event, properties: ["story": story.rawValue])
    }
}