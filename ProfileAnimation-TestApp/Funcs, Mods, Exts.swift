import SwiftUI

public func calculatePercent(lowerNumber: CGFloat, higherNumber: CGFloat) -> CGFloat {
    @State var lowerNum: CGFloat = lowerNumber
    @State var higherNum: CGFloat = higherNumber
    @State var percent: CGFloat
    
     percent = ((lowerNum / higherNum) * 25)
    
    return percent
}

extension View {
    func horizonatalPadding() -> CGFloat {
        calculatePercent(
            lowerNumber: UIScreen.main.bounds.width - 20,
            higherNumber: UIScreen.main.bounds.width)
    }
}

struct FillScreen: View {
    var body: some View{
        VStack {
            HStack {
                Spacer()
            }
            Spacer()
        }
    }
}

struct GradientBackground: ViewModifier {
    let model = AnimationModel()
    var selection = false
    func body(content: Content) -> some View {
        return content
            .background( RadialGradient(colors: model.gradientArray, center: .center, startRadius: 100, endRadius: 600)).opacity(0.90)
    }
}

extension View {
    func backgroundGrad() -> some View {
        modifier(GradientBackground())
    }
}
