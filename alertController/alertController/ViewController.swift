//
//  ViewController.swift
//  alertController
//
//  Created by dam2 on 14/12/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonAction(_ sender: Any) {
        let alertController: UIAlertController = UIAlertController(title: "ERROR", message: "No es la llama que buscas", preferredStyle: .alert)
        
        let aceptarAction: UIAlertAction = UIAlertAction(title: "Entendido", style: .default, handler: { (action) -> Void in
            guard let textFields = alertController.textFields else { return }
            
            if let userName = textFields[0].text,
               let password = textFields[1].text {
                print("Usuario \(userName), contraseña \(password)")
            }
        })
        let cancelarAction: UIAlertAction = UIAlertAction(title: "Cancelar", style: .cancel)
        let deleteAction: UIAlertAction = UIAlertAction(title: "Eliminar", style: .destructive)
        
        alertController.addAction(aceptarAction)
        alertController.addAction(cancelarAction)
        alertController.addAction(deleteAction)
        
        alertController.addTextField{ (textField) in
            textField.placeholder = "Nombre de usuario"
        }
        
        alertController.addTextField{ (textField) in
            textField.placeholder = "Contraseña"
            textField.isSecureTextEntry = true
        }
        
        self.present(alertController, animated: true)
    }
    
}
