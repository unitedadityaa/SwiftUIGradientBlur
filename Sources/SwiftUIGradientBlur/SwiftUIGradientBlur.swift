import SwiftUI

struct GradientImageView : View {
    var image: Image
    var height: CGFloat?
    var width: CGFloat?
    var style : UIBlurEffect.Style = .dark
    
    var body: some View {
        ZStack(alignment: .bottom){
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: width , height: height)
            
            
            VStack{}
                .frame(width: width , height: height)
                .background(
                    VisualEffectView(effect: UIBlurEffect(style: style))
                        .preferredColorScheme(.dark)
                )
            
            
            
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: width , height: height)
                .mask(LinearGradient(stops: [.init(color: .white, location: 0),
                                             .init(color: .white, location: 0.4),
                                             .init(color: .clear, location: 0.80),], startPoint: .top, endPoint: .bottom))
        }
    }
}

struct VisualEffectView: UIViewRepresentable {
    var effect: UIVisualEffect?
    
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView {
        return UIVisualEffectView()
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) {
        uiView.effect = effect
    }
}

