//
//  MainViewModel.swift
//  MealLog
//
//  Created by 홍창남 on 2020/06/01.
//  Copyright © 2020 hcn1519. All rights reserved.
//

import Foundation
import Combine

class MainViewModel: ObservableObject {
    @Published var addMealIsPresented: Bool = false
}
