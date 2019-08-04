//
//  TreeNode.swift
//  TreeNode
//
//  Created by Myron on 2019/8/4.
//  Copyright © 2019 Myron. All rights reserved.
//

final class TreeNode<T> {
    var value: T
    private(set) var children: [TreeNode] = []
    
    init(_ value: T) {
        self.value = value
    }
    
    func addChild(_ child: TreeNode) {
        children.append(child)
    }
}

// MARK: - Traverse
extension TreeNode {
    //MARK: 深度优先遍历
    func traverseDepthFirst(_ closure: (TreeNode) -> Void) {
        closure(self)
        children.forEach {
            $0.traverseDepthFirst(closure)
        }
    }
    
    //MARK: 层次顺序遍历
    func traverseLevelOrder(_ closure: (TreeNode) -> Void) {
        closure(self)
        var queue = Queue<TreeNode>()
        children.forEach { queue.enqueue($0) }
        while let node = queue.dequeue() {
            closure(node)
            node.children.forEach { queue.enqueue($0) }
        }
    }
}
