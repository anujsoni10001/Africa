//
//  CreditsView.swift
//  Africa
//
//  Created by Anuj Soni on 17/04/22.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
    VStack {
    
    Image("compass")
    .resizable()
    .scaledToFit()
    .frame(width:128, height: 128, alignment: .center)
            
            Text("""
    Copyright © Robert Petras
    All right reserved
    Better Apps ♡ Less Code
    """)
        .font(.footnote)
    .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
