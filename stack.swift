//
//  stack.swift
//  SwiftTrainingExercise
//
//  Created by Ahmed Ibrahim on 20/06/2023.
//

import Foundation

class Stack<Element: Comparable & Hashable>: FunctionalArray<Element> {
  
  func pop() -> Element? {
    guard !self.isEmpty() else {
      return nil // We can throw empty Array Error
    }
    return elementsArray.remove(at: elementsArray.count-1)
  }
  
  func push(_ element: Element) throws {
    guard elementsArray.count < self.maxSize else {
      throw DataStructureError.negativeSize
    }
    elementsArray.append(element)
  }
  
  func peek() -> Element? {
    guard !self.isEmpty() else {
      return nil
    }
    return elementsArray[elementsArray.count-1]
  }
  
  func isEmpty() -> Bool {
    elementsArray.isEmpty
  }

}

extension Stack: CustomStringConvertible {
  var description: String {
    return self.elementsArray.description
  }
}


