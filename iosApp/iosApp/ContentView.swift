import SwiftUI
import shared

struct ContentView: View {
    
    let viewModel = ViewModel()
    
    init() {
        viewModel.initialize()
    }
    
    
    var body: some View {
        Text("Test")
    }
}
