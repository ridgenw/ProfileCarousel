import SwiftUI

struct IconCarousel: View {
    @StateObject var animate = AnimationModel()
    @StateObject var UIState = UIStateModel()
    @State private var forEachOpactiy = false
    @State private var coverSquareAnimation = false
    @State private var isActivated = false
    @Namespace var nspace
    var body: some View {
         ZStack{
            ZStack {
                if !animate.profileArrayShown {
                    ZStack {
                        CircleView(model: animate)
                            .onTapGesture(perform: {
                                isActivated.toggle()
                            })
                    }
                } else {
                    ZStack{
                        CarouselView()
                            .opacity(forEachOpactiy ? 1 : 0)
                            .environmentObject(UIState)
                            .environmentObject(animate)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.black)
                                    .frame(width: UIScreen.main.bounds.width - (32*2) - (16*2), height: 279)
                                    .opacity(coverSquareAnimation ? 0 : 1)
                            )
                            .onAppear() {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                    withAnimation(.easeIn(duration: 0.3)) {
                                        forEachOpactiy = true
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.31) {
                                        coverSquareAnimation = true
                                        withAnimation(.easeIn(duration: 0.4)) {
                                            animate.titleFade = true
                                        }
                                    }
                                }
                            }
                        
                        FillScreen()
                    }
                }
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .ignoresSafeArea()
                    .foregroundColor(.clear)
//                    .backgroundGrad()
                    .opacity(animate.backgroundFade ? 1 : 0) )
        }
    }
}
