//
//  Node.swift
//  SwiftTrainingExercise
//
//  Created by Ahmed Ibrahim on 20/06/2023.
//

import Foundation

class Node{
  
  let uuid = UUID().uuidString
  let description: String
  
  init(desciption: String){
    self.description = desciption
  }

}
