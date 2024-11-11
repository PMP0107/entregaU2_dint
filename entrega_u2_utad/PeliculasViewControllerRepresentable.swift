import SwiftUI
import UIKit

struct PeliculasViewControllerRepresentable: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UINavigationController {
        let peliculasViewController = PeliculasViewController()
        
        let navigationController = UINavigationController(rootViewController: peliculasViewController)
        
        return navigationController
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {

    }
}
