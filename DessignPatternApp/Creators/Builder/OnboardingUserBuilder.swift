//
//  OnboardingUserBuilder.swift
//  DessignPatternApp
//
//  Created by Taras Chernysh on 12.11.2023.
//

import Foundation

protocol OnboardingUserBuilderProtocol {
    func reset()
    func set(name: String)
    func set(dateOfBirth: Date)
    func set(gender: Gender)
    func set(avatarImageData: Data)
    func build() -> OnboardingUserProtocol
}

final class OnboardingUserBuilder {
    
    private var onboardingUser: OnboardingUserProtocol = OnboardingUser(name: "No name")
}

// MARK: - OnboardingUserBuilderProtocol

extension OnboardingUserBuilder: OnboardingUserBuilderProtocol {
    
    func reset() {
        onboardingUser = OnboardingUser(name: onboardingUser.name)
    }
    
    func set(name: String) {
        onboardingUser.name = name
    }
    
    func set(dateOfBirth: Date) {
        onboardingUser.dateBirth = dateOfBirth
    }
    
    func set(gender: Gender) {
        onboardingUser.gender = gender
    }
    
    func set(avatarImageData: Data) {
        onboardingUser.avatarImageData = avatarImageData
    }
    
    func build() -> OnboardingUserProtocol {
        let model = onboardingUser
        reset()
        return model
    }
}
