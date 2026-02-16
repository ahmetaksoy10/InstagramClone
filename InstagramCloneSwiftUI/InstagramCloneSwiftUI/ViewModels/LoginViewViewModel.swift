import Foundation
internal import Combine
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    @Published var checkLogin = false
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { authData, error in
            if error == nil {
                self.checkLogin = true
            }
        }
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Lütfen gerekli alanları doldurunuz."
            return false
        }
        
        guard password.count >= 6 else {
            errorMessage = "Şifre en az 6 karakter olmalıdır."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Lütfen geçerli bir e-posta adresi giriniz."
            return false
        }
        
        return true
    }
}
