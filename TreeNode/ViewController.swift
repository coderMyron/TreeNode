//
//  ViewController.swift
//  TreeNode
//
//  Created by Myron on 2019/8/4.
//  Copyright © 2019 Myron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let products = TreeNode("Products")
        
        let phone = TreeNode("Phone")
        let computer = TreeNode("Computer")
        products.addChild(phone)
        products.addChild(computer)
        
        let iPhone8 = TreeNode("iPhone 8")
        let iPhone8Plus = TreeNode("iPhone 8 Plus")
        let iPhoneX = TreeNode("iPhone X")
        
        let macBookPro = TreeNode("MacBook Pro")
        let iMac = TreeNode("iMac")
        let iMacPro = TreeNode("iMacPro")
        
        phone.addChild(iPhone8)
        phone.addChild(iPhone8Plus)
        phone.addChild(iPhoneX)
        
        computer.addChild(macBookPro)
        computer.addChild(iMac)
        computer.addChild(iMacPro)
        
        print("深度优先遍历")
        products.traverseDepthFirst { (treeNode) in
            print(treeNode.value)
        }
        print("--------------")
        print("层次顺序遍历")
        products.traverseLevelOrder { (treeNode) in
            print(treeNode.value)
        }

    }


}

