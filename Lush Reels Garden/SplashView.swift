//
//  SplashView.swift
//  Lush Reels Garden
//
//  Created by sandip  on 30/08/24.
//

import SwiftUI

@available(iOS 15.0, *)
struct SplashView: View {
    @State private var isActive = false

    var body: some View {
            if isActive {
                ContentView()  // Transition to the main content view
            } else {
                
                    
                VStack {
                 
                    
                    Image("AppLogo")  // Replace "logo" with your actual splash image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                    Text("Welcome to Lush Reels Garden!")
                        .font(.headline)
                        .padding()
                    
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                Image("BGimage")
                    .resizable()
                    .scaledToFill()
                   // .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                )
                
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) { // Delay for 2.5 seconds
                        withAnimation {
                            self.isActive = true
                        }
                        
                    
                    }
                }
            }
        }
    }
@available(iOS 15.0, *)
#Preview {
    SplashView()
}
