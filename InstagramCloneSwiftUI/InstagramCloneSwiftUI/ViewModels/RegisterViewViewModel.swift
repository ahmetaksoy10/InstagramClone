import Foundation
internal import Combine
import FirebaseAuth
import FirebaseFirestore

class RegisterViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var username = ""
    @Published var password = ""
    @Published var errorMessage = ""
    @Published var checkRegister = false

    init() {}
    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { authData, error in
            if error == nil {
                let firestore = Firestore.firestore()
                let userData = ["username": self.username, "email": self.email]
                firestore.collection("Users").addDocument(data: userData) { error in
                    if error == nil {
                        self.checkRegister = true
                    }
                }
            }
        }
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty,
              !username.trimmingCharacters(in: .whitespaces).isEmpty else {
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
