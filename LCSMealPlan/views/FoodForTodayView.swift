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
    
    // Creats an empty list of type string
    @State var listOfMeals: [String] = []
    
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
            
            
            //frhText(lunch)

            
            Button(action: {
                
            }, label: {
                Text("Submit")
            })
            .buttonStyle(.bordered)
            
            List{
                
                ForEach(listOfMeals) {currentlunch in
                    Text(lunch)
                }
                
            }

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
