# TreeNode
# 树：深度优先遍历、层次顺序遍历  

## 深度优先遍历
从根开始，从最左边的树枝一直往下遍历，遍历完之后再遍历右边的树枝，直到所有树枝便利完为止。  
## 层次顺序遍历
把每一层的元素添加到队列中，保证树中的节点按层次顺序遍历，然后再出队。  

### 例子：  
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

### 打印：  
深度优先遍历  
Products  
Phone  
iPhone 8  
iPhone 8 Plus  
iPhone X  
Computer  
MacBook Pro  
iMac  
iMacPro  
--------------  
层次顺序遍历  
Products  
Phone  
Computer  
iPhone 8  
iPhone 8 Plus  
iPhone X  
MacBook Pro  
iMac  
iMacPro  
