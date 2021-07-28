// SizeClasses.swift
// SOURCE: https://www.hackingwithswift.com/books/ios-swiftui/using-size-classes-with-anyview-type-erasure

import SwiftUI



struct SizeClasses: View {
   
   // MARK: - PROPERTY WRAPPERS
   
   @Environment(\.horizontalSizeClass) var sizeClass
   
   
   // MARK: - COMPUTED PROPERTIES
   
   var body: some View {
      
      // VStack { // OLIVIER: This solution works as an alternative to AnyView()
      if sizeClass == .compact { // OLIVIER: I could even use the if statement only without VStack and AnyView() .
         // VStack {
         AnyView( // OLIVIER: There is no need to use AnyView here , Apple has solved the bug.
            VStack {
               Text("Active Size Class:")
               Text("Compact")
                  .textCase(.uppercase)
            }
            .font(.largeTitle)
         )
      } else {
         // HStack {
         AnyView(
            HStack {
               Text("Active Size Class:")
               Text("Regular")
                  .textCase(.uppercase)
            }
            .font(.largeTitle)
         )
      }
      // }
      // .font(.largeTitle)
   }
}





// MARK: PREVIEWS

struct SizeClasses_Previews: PreviewProvider {
   
   static var previews: some View {
      
      SizeClasses()
   }
}
