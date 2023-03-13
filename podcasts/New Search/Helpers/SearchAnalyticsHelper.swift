import SwiftUI

class SearchAnalyticsHelper: ObservableObject {
    let source: AnalyticsSource

    init(source: AnalyticsSource) {
        self.source = source
    }

    // MARK: - Search History

    func trackHistoryCleared() {
        Analytics.track(.searchHistoryCleared, properties: ["source": source])
    }
}
