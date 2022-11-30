import SwiftUI

struct IntroStory: StoryView {
    var duration: TimeInterval = 5.seconds
    let identifier: String = "intro"

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(spacing: 0) {
                    Image("2022_big")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, geometry.size.height * Constants.imageVerticalPadding)

                    Text(L10n.eoyStoryIntroTitle)
                        .font(.system(size: Constants.fontSize, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding([.leading, .trailing], Constants.textHorizontalPadding)
                    Spacer()
                }
            }
            .background(UIColor(hex: "#1A1A1A").color)
        }
    }

    func onAppear() {
        Analytics.track(.endOfYearStoryShown, story: identifier)
    }

    private struct Constants {
        // Percentage based on total view height
        static let imageVerticalPadding = 0.13

        static let textHorizontalPadding: CGFloat = 35
        static let textMaxHeightInPercentage: CGFloat = 0.07
        static let textMinimumScaleFactor: CGFloat = 0.01

        static let fontSize = 22.0
        static let textHorizontalPadding = 35.0
    }
}

struct IntroStory_Previews: PreviewProvider {
    static var previews: some View {
        IntroStory()
    }
}
