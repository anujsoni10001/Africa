//
//  OnboardingView.swift
//  Africa
//
//  Created by Anuj Soni on 05/04/22.
//

import SwiftUI

struct GalleryView: View {

@State private var selectedAnimal:String = "lion"
    
let animals:[Animal] = Bundle.main.decode("animals.json")
let haptics = UIImpactFeedbackGenerator(style: .medium)
    
//    //Simple Grid Defination
//    let gridLayout:[GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]

//    //Efficient Grid Layout
//    let gridLayout:[GridItem] = Array(repeating:GridItem(.flexible()), count: 3)
    
    //Dynamic Grid Layout
    @State var gridLayout:[GridItem] = [GridItem(.flexible())]
    @State var gridColumn:Double = 3.0
    
    func gridSwitch(){
        gridLayout = Array(repeating:.init(.flexible()), count: Int(gridColumn))
    }
    
    var body: some View {
    ScrollView(.vertical, showsIndicators:false){
    
    VStack(alignment:.center, spacing:30) {
    // MARK: - Image
    Image(selectedAnimal)
    .resizable()
    .scaledToFit()
    .clipShape(Circle())
    .overlay(Circle().stroke(Color.white,lineWidth:8))
        
    Slider(value: $gridColumn,in :2...4,step:1)
    .padding(.horizontal)
    .onChange(of: gridColumn){value in
     gridSwitch()
    }
        
    LazyVGrid(columns:gridLayout,alignment:.center,spacing:10){
    ForEach(animals) { item in
    Image(item.image)
    .resizable()
    .scaledToFit()
    .clipShape(Circle())
    .overlay(Circle().stroke(Color.white,lineWidth:1))
    .onTapGesture {
        selectedAnimal = item.image
        haptics.impactOccurred()
    }
    }
    }
    .animation(.easeIn)
    .onAppear(perform: {
    gridSwitch()
    })
    }//Vstack
    .padding(.horizontal,10)
    .padding(.vertical,50)
        
    }
    .frame(maxWidth:.infinity, maxHeight:.infinity)
    .background(MotionAnimationView())
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}





