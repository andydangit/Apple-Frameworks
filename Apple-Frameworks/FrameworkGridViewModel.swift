//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by DangIt on 8/22/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework?{
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
}
