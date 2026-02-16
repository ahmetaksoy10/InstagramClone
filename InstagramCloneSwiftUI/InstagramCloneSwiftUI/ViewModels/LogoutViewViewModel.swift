import Foundation
internal import Combine
import FirebaseAuth

class LogoutViewViewModel: ObservableObject {
    @Published var checkLogout = false
    init() {}
    
    func logout() {
        do {
            try Auth.auth().signOut()
            checkLogout = true
        } catch {
            print("ERROR!")
        }
    }
}
