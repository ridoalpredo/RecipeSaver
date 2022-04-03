//
//  CategoryView.swift
//  RecipeSaver
//
//  Created by rido alpredo on 03/04/22.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    
    var recipes: [Recipe]{
        Recipe.all.filter{ $0.category == category.rawValue}
    }
    
    var body: some View {
        
        ScrollView {
            RecipeList(recipe: recipes)
        }
        .navigationTitle(category.rawValue + "s")
        
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
    }
}
