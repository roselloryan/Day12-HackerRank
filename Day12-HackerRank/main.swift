//
//  main.swift
//  Day12-HackerRank

import Foundation

// Class Person
class Person {
    var firstName: String
    var lastName: String
    var id: Int
    
    // Initializer
    init(firstName: String, lastName: String, identification: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = identification
    }
    
    // Print person data
    func printPerson() {
        print("Name: \(self.lastName), \(self.firstName)")
        print("ID: \(self.id)")
    }
} // End of class Person

Person (firstName: "Ryan", lastName: "Rosello", identification:12345).printPerson()


// Class Student
class Student: Person {
    var scores: [Int]
    
    // Write the Student class initializer
    init(firstName: String, lastName: String, identification: Int, scores: [Int]) {
        
        self.scores = scores
        super.init(firstName: firstName, lastName: lastName, identification: identification)
    }
    // Write the calculate method
    
    func calculate() -> Character{
        var sum = 0
        
        for Int in self.scores {
            sum += Int
        }
        
        let average = sum / self.scores.count
        
        if average >= 90 && average <= 100 {
            return "O"
        }
        else if average >= 80 && average < 90 {
            return "E"
        }
        else if average >= 70 && average < 80 {
            return "A"
        }
        else if average >= 55 && average < 70 {
            return "P"
        }
        else if average >= 40 && average < 55 {
            return "D"
        }
        else {
            return "T"
        }
    }
    
} // End of class Student

Person (firstName: "Ryan", lastName: "Rosello", identification:12345).printPerson()
//Student(firstName:  "Ryan", lastName: "Rosello", identification:12345, scores: [10, 20, 30])


print(Student(firstName:  "Ryan", lastName: "Rosello", identification:12345, scores: [10, 20, 30]).calculate())
