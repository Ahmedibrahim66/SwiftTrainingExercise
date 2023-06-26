//
//  FunctionalArray.swift
//  SwiftTrainingExercise
//
//  Created by Ahmed Ibrahim on 20/06/2023.
//

import Foundation

class FunctionalArray<Element> where Element: Equatable & Comparable & Hashable {
  
  var elementsArray: [Element] = [] // how to set this as private only for subclass and superclass so its not accessable ?
  private(set) var maxSize = Int.max;
  
  init() {}
  
  init(maxSize size: Int) throws {
    guard size >= 0 else {
      throw DataStructureError.negativeSize
    }
    self.maxSize = size
  }
  
  func sort(by sortFunction: (Element, Element) -> Bool) {
    elementsArray.sort(by: sortFunction)
  }
  
  func removeDuplicates(){
    var set = Set<Element>()
    var uniqueElementsArray: [Element] = []
    for element in elementsArray {
      if set.insert(element).inserted {
        uniqueElementsArray.append(element)
      }
    }
    self.elementsArray = uniqueElementsArray
  }
  
  func insert(element: Element, at index: Int) throws {
    guard index <= elementsArray.count && index < maxSize && elementsArray.count < maxSize else {
      throw DataStructureError.indexOutOfBound
    }
    elementsArray.insert(element, at: index)
  }
  
  func remove(at index: Int) throws {
    guard index < elementsArray.count else {
      throw DataStructureError.indexOutOfBound
    }
    elementsArray.remove(at: index)
  }
  
  func resize(to newSize: Int) throws {
    guard newSize >= 0 else {
      throw DataStructureError.negativeSize
    }
    maxSize = newSize
    if(newSize < elementsArray.count) {
      // Which elemnets should be removed ?
      elementsArray.removeSubrange(newSize..<elementsArray.count)
    }
  }
  
}
