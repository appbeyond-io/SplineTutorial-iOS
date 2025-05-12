//
//  ContentView.swift
//  SplineTutorial
//
//  Created by Yossa Bourne on 5/5/25.
//

import SwiftUI
import SplineRuntime

struct ContentView: View {
  
  /// NOTE: Local URL
  /// Make sure Spline file is added to app target and recheck filename and extension
  let url = Bundle.main.url(forResource: "voice_interaction_animation", withExtension: "splineswift")
  
  /// NOTE: Remote URL
  /// Make sure to change the Spline URL to yours. The URLs used in the tutorial were no longer available.
//  let url = URL(string: "https://<your-spline-url-here>/scene.splineswift")!
  
  var body: some View {
    ZStack {
      SplineView(sceneFileURL: url)
        .ignoresSafeArea()
      
      VStack {
        Spacer()
        
        Text("Talk to Marble AI")
          .font(.system(.title2, design: .default, weight: .semibold))
          .foregroundStyle(.white)
        
        Image(systemName: "microphone.circle.fill")
          .resizable()
          .frame(width: 60, height: 60)
          .foregroundStyle(.white, .blue)
      }
      .padding()
    }
  }
}

#Preview {
  ContentView()
}
