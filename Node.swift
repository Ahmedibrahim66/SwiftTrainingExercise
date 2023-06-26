//
//  Node.swift
//  SwiftTrainingExercise
//
//  Created by Ahmed Ibrahim on 20/06/2023.
//

import Foundation


class Node : Comparable {
  
  let uuid = UUID().uuidString
  let nodeDescription: String
  
  init(desciption: String){
    self.nodeDescription = desciption
  }
  
  static func < (lhs: Node, rhs: Node) -> Bool {
    return lhs.uuid < rhs.uuid
  }

}

extension Node: Equatable {
  static func == (lhs: Node, rhs: Node) -> Bool {
    return lhs.uuid == rhs.uuid
  }
}

extension Node: Hashable {
  func hash(into hasher: inout Hasher) {
    hasher.combine(uuid)
    hasher.combine(nodeDescription)
  }
}

extension Node: CustomStringConvertible {
  var description: String {
    return "\(uuid)"
  }
}
