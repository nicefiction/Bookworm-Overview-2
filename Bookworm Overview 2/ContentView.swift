// ContentView.swift

import SwiftUI



struct ContentView: View {
   
   // MARK: - PROPERTY WRAPPERS
   
   @State private var hasRememberedMe: Bool = false
   
   
   
   // MARK: - COMPUTED PROPERTIES
   
   var body: some View {
      
      VStack {
         PushButtonView(isOn: $hasRememberedMe,
                        title: "Hello World")
         Text(hasRememberedMe ? "ON" : "OFF")
      }
   }
}





// MARK: - PREVIEWS -

struct ContentView_Previews: PreviewProvider {
   
   static var previews: some View {
      
      ContentView()
   }
}
