//
//  Meal.swift
//  MealLog
//
//  Created by 홍창남 on 2020/06/01.
//  Copyright © 2020 hcn1519. All rights reserved.
//

import Foundation

enum MealType {
    /// 아침
    case breakfast
    /// 점심
    case lunch
    /// 저녁
    case dinner
    /// 간식
    case snak
    /// 음료
    case drink
}

struct Meal {
    let name: String
    let volume: String
    let calories: Double
    let type: MealType
}
