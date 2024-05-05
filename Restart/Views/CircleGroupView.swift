//
//  CircleGroupView.swift
//  Restart
//
//  Created by Joel Lacerda on 05/05/24.
//

import SwiftUI

struct CircleGroupView: View {
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
    }
}

#Preview {
    ZStack {
        Color("ColorBlue")
            .ignoresSafeArea(.all, edges: .all)
        CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
    }
}