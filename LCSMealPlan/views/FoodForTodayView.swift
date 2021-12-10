//
//  FoodForTodayView.swift
//  LCSMealPlan
//
//  Created by Logan Snopek on 2021-12-10.
//

import SwiftUI

struct FoodForTodayView: View {
    //MARK: stord proprotys
    
    @State var lunch: String = ""
    
    //MARK: Computed proprots
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Divider()
                .padding(.vertical, 20)
            
            Text("Todays Lunch")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            // Example usage
            TextField("Lunch for today",
                      text: $lunch,
                      prompt: Text("Type something..."))
                .padding()
            
            Button(action: {
                // NOTE: Output will not be shown unless this app is run in the "full" simulator
                print("Button was pressed")
            }, label: {
                Text("Submit")
            })
            .buttonStyle(.bordered)

            Spacer()
        }
        .padding(.horizontal)
    }
}

struct FoodForTodayView_Previews: PreviewProvider {
    static var previews: some View {
        FoodForTodayView()
    }
}
