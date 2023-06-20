//
//  Queue.swift
//  SwiftTrainingExercise
//
//  Created by Ahmed Ibrahim on 20/06/2023.
//

import Foundation

class Queue<Element> {
  
  private var elementsArray: [Element] = []
  
  func add(_ element: Element){
    elementsArray.append(element)
  }
  
  func remove() -> Element? {
    guard !self.isEmpty() else {
      return nil
    }
    return elementsArray.remove(at: 0)
  }
  
  func peek() -> Element? {
    guard !self.isEmpty() else {
      return nil
    }
    return elementsArray[0]
  }
  
  func isEmpty() -> Bool {
    elementsArray.isEmpty
  }
}
