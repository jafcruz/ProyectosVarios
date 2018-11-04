//
//  ViewController.swift
//  01-IamRich
//
//  Created by Juan Antonio Fernandez Cruz on 03/11/2018.
//  Copyright © 2018 Juan Antonio Fernandez Cruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //PROPIEDADES
    
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var imgRubi: UIImageView!
    @IBOutlet weak var btnOutletPulsar: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //METODOS
    
    @IBAction func btnPulsar(_ sender: UIButton) {
        
        let controller = UIAlertController(title: "I am Rich", message: """
                                                    I am Rich,
                                                    I deserve it,
                                                    I am good,
                                                    healthy and sucessfull
                                                    """, preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Aceptar", style: .default) {(action) in
            print("He pulsado el boton Aceptar")
        }
        controller.addAction(action)
        let action2 = UIAlertAction(title: "Borrar", style: .destructive) { (_) in
            print("He pulsado el boton Borrar")
        }
        controller.addAction(action2)
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel) { _ in
            print("He pulsado el boton Cancelar")
        }
        controller.addAction(action3)
        self.show(controller, sender: nil)
        
    }
}

