//
//  OnboardingUserDirector.swift
//  DessignPatternApp
//
//  Created by Taras Chernysh on 12.11.2023.
//

import Foundation

struct OnboardingUserDirector {
    
    private let builder: OnboardingUserBuilderProtocol
    
    init(builder: OnboardingUserBuilderProtocol) {
        self.builder = builder
    }
    
    func setDateOfBirthAndGender() {
        builder.set(dateOfBirth: Date())
        builder.set(gender: .male)
    }
    
    func setAvatarAndName() {
        builder.set(name: "Steve Jobs")
        builder.set(avatarImageData: Data())
    }
    
    func build() -> OnboardingUserProtocol {
        builder.build()
    }
}
