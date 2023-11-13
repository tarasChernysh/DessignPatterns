//
//  Builder.swift
//  DessignPatternApp
//
//  Created by Taras Chernysh on 12.11.2023.
//

import Foundation

struct BuilderPattern {}

// MARK: - DesignPatternHandler

extension BuilderPattern: DesignPatternHandler {
    
    func handlePattern() {
        
        let onboardingUserBuilder = OnboardingUserBuilder()
        let onboardingUserDirector = OnboardingUserDirector(builder: onboardingUserBuilder)
        onboardingUserDirector.setAvatarAndName()
        onboardingUserDirector.setDateOfBirthAndGender()
        let onboardingUser = onboardingUserDirector.build()
        print("onboarding user: \(onboardingUser)")
    }
}
