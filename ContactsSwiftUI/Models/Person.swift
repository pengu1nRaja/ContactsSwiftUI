//
//  Person.swift
//  ContactsSwiftUI
//
//  Created by PenguinRaja on 09.04.2021.
//

import Foundation

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                id: Int.random(in: 1...100),
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        return persons
    }
}
