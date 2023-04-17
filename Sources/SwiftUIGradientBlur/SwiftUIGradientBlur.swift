import SwiftUI
import AVKit

struct GradientImageView : View {
    var image: Image
    var height: CGFloat
    var width: CGFloat
    var blurStyle : UIBlurEffect.Style = .dark
    
    var body: some View {
        ZStack(alignment: .bottom){
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: width , height: height)
                .clipped()
            
            
            VStack{}
                .frame(width: width , height: height)
                .background(
                    VisualEffectView(effect: UIBlurEffect(style: blurStyle))
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

struct GradientVideoView : View {
    let player: AVPlayer
    var height: CGFloat
    var width: CGFloat
    var style : UIBlurEffect.Style = .dark
    
    var body: some View {
        ZStack(alignment: .bottom){
            VideoPlayerView(player: player)
                .frame(width: width , height: height)
                .clipped()
            
            
            VStack{}
                .frame(width: width , height: height)
                .background(
                    VisualEffectView(effect: UIBlurEffect(style: style))
                )
            
            
            VideoPlayerView(player: player)
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


struct VideoPlayerView: UIViewControllerRepresentable {
    let player: AVPlayer
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let view = AVPlayerViewController()
        view.player = player
        view.showsPlaybackControls = false
        view.videoGravity = .resizeAspectFill
        
        return view
    }
    
    func updateUIViewController(_ uiView: AVPlayerViewController, context: Context) {}
}
