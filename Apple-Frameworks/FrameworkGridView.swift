//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by FartFire on 8/12/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(MockData.frameworks) { framework in
                FrameworkTitleView(framework: framework)
            }

        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
   
}
