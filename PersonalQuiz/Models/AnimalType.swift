//
//  AnimalType.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 06.02.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var shortDescription: String {
        switch self {
        case .dog:
            return "Вы - 🐶"
        case .cat:
            return "Вы - 🐱"
        case .rabbit:
            return "Вы - 🐰"
        case .turtle:
            return "Вы - 🐢"
        }
    }
    
    var description: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .cat:
            return "Вы сами себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии."
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших расстояниях"
        }
    }
}
