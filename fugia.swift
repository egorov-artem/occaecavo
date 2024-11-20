import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Example using Circle")
                .font(.title)
                .padding()

            // A simple circle with a specific size
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)

            // A circle with a border (stroke)
            Circle()
                .stroke(Color.red, lineWidth: 5)
                .frame(width: 100, height: 100)

            // A circle with a gradient fill
            Circle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [.yellow, .orange]), startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 100, height: 100)
        }
        .padding()
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
