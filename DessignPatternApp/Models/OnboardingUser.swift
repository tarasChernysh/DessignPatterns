//
//  OnboardingUser.swift
//  DessignPatternApp
//
//  Created by Taras Chernysh on 12.11.2023.
//

import Foundation

protocol OnboardingUserProtocol {
    var name: String { get set }
    var gender: Gender? { get set }
    var dateBirth: Date? { get set }
    var avatarImageData: Data? { get set }
}

struct OnboardingUser: OnboardingUserProtocol {
    var name: String
    var gender: Gender?
    var dateBirth: Date?
    var avatarImageData: Data?
}
 
enum Gender {
    case male, female
}
