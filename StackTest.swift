//
//  StackTest.swift
//  SwiftTrainingExercise
//
//  Created by Ahmed Ibrahim on 20/06/2023.
//

import Foundation


var stack = Stack<Node>()
stack.push(Node(desciption: "Random Text"))
stack.push(Node(desciption: "Random Text2"))
stack.pop()
stack.isEmpty()
stack.peek()
stack.pop()
stack.pop()
stack.push(Node(desciption: "Random Text3"))
