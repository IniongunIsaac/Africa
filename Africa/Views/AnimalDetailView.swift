//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Isaac Iniongun on 23/03/2023.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //Hero(Cover) Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                //Title
                Text(animal.name.uppercased())
                  .font(.largeTitle)
                  .fontWeight(.heavy)
                  .multilineTextAlignment(.center)
                  .padding(.vertical, 8)
                  .foregroundColor(.primary)
                  .background(
                    Color.accentColor
                      .frame(height: 6)
                      .offset(y: 24)
                  )
                
                //Headline
                Text(animal.headline)
                  .font(.headline)
                  .multilineTextAlignment(.center)
                  .foregroundColor(.accentColor)
                  .padding(.horizontal)
                
                //Gallery
                Group {
                  HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                  
                  InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                //Facts
                
                //Description
                
                //Map
                
                //Link
            } //: VStack
        } //: ScrollView
        .navigationTitle("Learn about \(animal.name)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[1])
        }
    }
}
