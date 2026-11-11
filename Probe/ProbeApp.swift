// THROWAWAY PROBE. Not deadpixel. Its only job is to prove the pipeline:
// cloud Mac build -> unsigned IPA -> SideStore -> iPhone SE (3rd gen).
// Delete freely once the route is verified.

import SwiftUI
import UIKit

@main
struct ProbeApp: App {
    var body: some Scene {
        WindowGroup {
            ProbeView()
        }
    }
}

struct ProbeView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 12) {
                Text("pixelpredeath")
                    .font(.system(size: 28, weight: .bold, design: .monospaced))
                Text("pipeline probe: it landed")
                    .font(.system(size: 15, design: .monospaced))
                Text("iOS \(UIDevice.current.systemVersion)")
                    .font(.system(size: 13, design: .monospaced))
                    .opacity(0.6)
                Text("throwaway build, safe to delete")
                    .font(.system(size: 11, design: .monospaced))
                    .opacity(0.4)
            }
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
        }
    }
}
