
import SwiftUI

@main
struct ProfileAnimation_TestAppApp: App {
    @StateObject var logic = AnimationModel()
    var body: some Scene {
        WindowGroup {
            SwiftUIView(model: logic)
//            CarouselView()
//                .environmentObject(UIStateModel())
//                .environmentObject(AnimationModel())
        }
    }
}

