//
//  Question.swift
//  PersonalityQuizProject
//
//  Created by Skyler Robbins on 10/7/24.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: ElementType
}

enum ElementType: Character {
    case fire = "🔥"
    case water = "💧"
    case earth = "🌎"
    case air = "💨"
    
    var definition: String {
        switch self {
        case .fire: 
            return "Energetic, passionate, and impulsive. Fire individuals are often bold and adventurous. They crave excitement and new experiences. They can be intense and sometimes impatient, but they are also full of life and enthusiasm."
        case .water:
            return "Empathetic, intuitive, and emotional. Water individuals are often sensitive and compassionate. They are in tune with their feelings and the emotions of others. They can be moody and sometimes withdrawn, but they are also nurturing and supportive."
        case .earth:
            return "Grounded, practical, and reliable. Earth individuals are typically stable and dependable. They value tradition and security. They are often patient and hardworking, but they can also be stubborn and resistant to change."
        case .air:
            return "Intellectual, curious, and independent. Air individuals are often open-minded and adaptable. They enjoy learning and exploring new ideas. They can be detached and sometimes aloof, but they are also creative and resourceful."
        }
    }
}

var questions: [Question] = [
    Question(
        text: "Which food do you like the most?",
        type: .single,
        answers: [
            Answer(text: "Spicy foods like chili or curry", type: .fire),
            Answer(text: "Comfort foods like soup or pasta", type: .water),
            Answer(text: "Hearty foods like steak or roast", type: .earth),
            Answer(text: "Light and refreshing foods like salad or fruit", type: .air)
        ]
    ),
    Question(
        text: "Which activites do you enjoy most?",
        type: .multiple,
        answers: [
            Answer(text: "Competitive sports or adrenaline-pumping activities", type: .fire),
            Answer(text: "Spending time with friends and family", type: .water),
            Answer(text: "Gardening, hiking, or other outdoor activities", type: .earth),
            Answer(text: "Learning new things, debating, or solving puzzles", type: .air)
        ]
    ),
    Question(
        text: "How much do you enjoy roller coasters?",
        type: .ranged,
        answers: [
            Answer(text: "I don't like them at all.", type: .water),
            Answer(text: "I'm indifferent to them.", type: .air),
            Answer(text: "I like them, but I prefer slower rides.", type: .earth),
            Answer(text: "I love them!", type: .fire)
        ]
    )
]
