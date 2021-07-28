// PushButtonView.swift

import SwiftUI


struct PushButtonView: View {
   
   // MARK: - PROPERTY WRAPPERS
   
   @State private var isRememberingMe: Bool = false
   // @State var isOn: Bool
   @Binding var isOn: Bool
   
   
   
   // MARK: - PROPERTIES
   
   let title: String
   let onTitle: String = "ON"
   let offTitle: String = "OFF"
   let onGradient: [Color] = [ Color.yellow, Color.orange ]
   let offGradient: [Color] = [ Color.blue, Color.purple ]
   
   
   // MARK: - COMPUTED PROPERTIES
   
   var body: some View {
      
      VStack {
         // Toggle(title, isOn: $isRememberingMe)
         Toggle(title, isOn: $isOn)
            .padding()
         Button(isOn ? onTitle : offTitle) {
            print("The Button is tapped.")
            isOn.toggle()
         }
         .padding()
         .frame(width: 200,
                height: 100)
         .foregroundColor(Color.white)
         .background(LinearGradient(gradient: Gradient(colors: isOn ? onGradient : offGradient),
                                    startPoint: .leading,
                                    endPoint: .trailing))
         .clipShape(Capsule())
         .shadow(radius: isOn ? 10 : 5)
      }
   }
}





// MARK: - PREVIEWS -

//struct PushButtonView_Previews: PreviewProvider {
//
//   static var previews: some View {
//
//      PushButtonView(title: "Remember Me")
//   }
//}
