/*
* This is the class file.
*
* @author  Jonathan Pasco-Arnone
* @version 1.0
* @since   2021-12-012
*/

// The whole defining class
class MrCoxallStack {
    var stackAsArray: [Int] = []

    // pushes a new number into the array
    func push(pushNumber: Int) {
        stackAsArray.insert(pushNumber, at: 0)
    }

    // pops the top value of the stack
    func pop() -> Int {
        let returnValue: Int
        if stackAsArray.count > 0 {
            let poppedNumber: Int = stackAsArray[0]
            stackAsArray.remove(at: 0)
            returnValue = poppedNumber
        } else {
            print("Stack is empty, cannot pop")
            returnValue = -1
        }
        return returnValue
    }

    // prints the full stack
    func showStack() {
        print(stackAsArray)
    }
}
