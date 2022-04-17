//
//  CenterModifier.swift
//  Africa
//
//  Created by Anuj Soni on 17/04/22.
//

import Foundation
import SwiftUI

struct CenterModifier:ViewModifier{
func body(content: Content) -> some View {
HStack{
Spacer()
content
Spacer()
}
}
}

