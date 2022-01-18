//
//  HomeView.swift
//  RecipeSaver
//
//  Created by rido alpredo on 17/01/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List(Recipe.all) { recipe in
                Text(recipe.category)
                    .navigationTitle("My Recipes")
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
