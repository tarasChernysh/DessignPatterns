//
//  CoreManager.swift
//  DessignPatternApp
//
//  Created by Taras Chernysh on 13.11.2023.
//

import Foundation

struct CoreManager {
    
    static let shared = CoreManager()
    
    private init() {}
    
    // MARK: - Public
    
    func run() {
        var patternHandlers: [DesignPatternHandler] = []
        /// builder
        patternHandlers.append(BuilderPattern())
        
        patternHandlers.forEach {
            $0.handlePattern()
        }
    }
}
