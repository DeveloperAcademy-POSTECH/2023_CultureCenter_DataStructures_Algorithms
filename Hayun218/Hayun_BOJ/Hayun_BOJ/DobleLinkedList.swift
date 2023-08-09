import Foundation

// Node Class Declearation

class Node<T: Equatable> {
  var data: T
  var prev: Node<T>? = nil
  var next: Node<T>? = nil

  init (data: T){
    self.data = data
  }
}

// DoubleLinkedList Class Declearation
class DoublyLinkedList<T: Equatable>{
  var head: Node<T>? = nil
  var tail: Node<T>? = nil
  var size: Int = 0

  // add at the end of the linked list
  func append(data: T){

    let newNode = Node(data: data)
    
    guard self.head != nil else{
      self.head = newNode
      self.tail = newNode
      self.size += 1
      return
    }

    self.tail?.next = newNode
    newNode.prev = self.tail
    self.tail = newNode

    self.size += 1
  }


  // add at the front
  func prepend(data: T){
    let newNode = Node(data: data)
    
    guard self.head != nil else{
      self.head = newNode
      self.tail = newNode
      self.size += 1
      return
    }

    self.head?.prev = newNode
    newNode.next = self.head
    self.head = newNode

    self.size += 1
  }

  // insert with the index
  func insertAtIndex(_ data: T, atIndex: Int){
    // out of index => return
    guard atIndex >= 0 && atIndex <= self.size else {
      print("index out of bound")
      return
    }

    if atIndex == 0 {
      self.prepend(data: data)
      return
    } else if atIndex == self.size {
      self.append(data: data)
      return
    }

    else {
      let newNode = Node(data: data)

      // search from the head
      if atIndex <= self.size/2 {
        var currNode = self.head

        for _ in 0..<atIndex{
          currNode = cur?.next
        }

      // search from the tail
      } else {
         var currNode = self.tail

        for _ in 0..<self.size-atIndex{
          currNode = cur?.prev
        }
      }
      
      newNode.prev = currNode?.prev
      currNode?.prev = newNode
      newNode.next = currNode
      
      self.size += 1
    }

  }

  // delete the head
  func deleteHead(){
    if self.size == 0 {
      return
    }
    self.head = self.head?.next
    self.size -= 1
  }


  // delete the tail
  func deleteTail(){
    if self.size == 0 {
      return
    }
    self.tail = self.tail?.prev
    self.size -= 1
  }
  
  // delete at index
  func deleteAtIndex(atIndex: Int){
    // out of index => return
    guard atIndex >= 0 && atIndex < self.size else {
      print("index out of bound")
      return
    }

    if atIndex == 0 {
      self.deleteHead()
      return
    } else if atIndex == self.size-1 {
      self.deleteTail()
      return
    } else{
      var curNode = self.head

      for _ in 0..<atIndex{
        curNode = curNode?.next
      }
      curNode?.prev?.next = curNode?.next
       self.size -= 1
    }
    return
  }
  // search the given index
  func search(atIndex: Int){
    // out of index => return
    guard atIndex >= 0 && atIndex < self.size else {
      print("index out of bound")
      return
    }
    var currNode = self.head
    for _ in 0..<self.size{
      currNode = currNode?.next
    }
    print(currNode?.data)
    return 
  }
  
  func countSize(){
    print(self.size)
  }
}

var inputKey = readLind()
var inputs = inputKey.components(seperatedBy: " ")

for input in inputs{
  print(input)
}

switch inputs[0]{
  case a: 
    self.append(data: inputs[1])
  case p: 
    self.prepend(data: inputs[1])
  case i: 
    var index:Int = readLine()
    self.insertAtIndex(data: inputs[1], indexAt: index)
  case dh: 
    self.deleteHead()
  case dt: 
    self.deleteTail()
  case d:
    self.deleteAtIndex(indexAt: inputs[1])
  case s: 
    self.search(inputs[1])

}
