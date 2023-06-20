//
//  stack.swift
//  SwiftTrainingExercise
//
//  Created by Ahmed Ibrahim on 20/06/2023.
//

import Foundation

class Stack<Element> {
  
  private var elementsArray: [Element] = []

  func pop() -> Element? {
    guard !self.isEmpty() else {
      return nil
    }
    return elementsArray.remove(at: elementsArray.count-1)
  }

  func push(_ element: Element) {
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



