//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by DangIt on 8/22/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework?
   @Published var isShowingDetailView = false
}
