import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    var body: some View {
        VStack {
            Image("AppLogo") // Use the name of your logo image
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150) // Adjust the size as needed

            Image(systemName: "globe")
                .imageScale(.large)

            Text("Hello, world!")
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Ensure VStack fills the entire screen
        .background(
            Image("BGimage") // Use the name of your background image
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all) // Make the background extend to the edges
        )
    }
}

@available(iOS 15.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
