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
    @State var listOfMeals: [MealSuggestion] = []
    
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
            
            
            //Text(lunch)

            
            Button(action: {
                let currentSuggestion = MealSuggestion(meal: lunch)
                listOfMeals.append(currentSuggestion)
            }, label: {
                Text("Submit")
            })
            .buttonStyle(.bordered)
            
            List {
                
                ForEach(listOfMeals) { currentlunch in
                    Text(currentlunch.meal)
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

