import Foundation
internal import Combine
import FirebaseAuth

class Users: ObservableObject {
    @Published var isLoggin = false
    
    init() {
        checklogin()
    }
    
    func checklogin() {
        if Auth.auth().currentUser != nil {
            isLoggin = true
        }
    }
}
