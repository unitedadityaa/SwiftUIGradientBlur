//
//  File.swift
//  
//
//  Created by Aditya Yadav on 17/04/23.
//

import Foundation
import SwiftUI
import AVKit

public struct GradientVideoView : View {
    let player: AVPlayer
    var height: CGFloat
    var width: CGFloat
    var style : UIBlurEffect.Style = .dark
    
    public init(player: AVPlayer, height: CGFloat, width: CGFloat, style: UIBlurEffect.Style) {
        self.player = player
        self.height = height
        self.width = width
        self.style = style
    }
    
    public var body: some View {
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
