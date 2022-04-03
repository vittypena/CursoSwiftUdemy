//
//  ViewController.swift
//  EjemploProyecto
//
//  Created by victorpena on 3/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiqueta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiqueta.text = "Ya Cambie"
        // fuck viewDidLoad es cuando ya ha cargado la imagen
        //Para crear un elemento en el layout en el main, clic en +
        //Para añadirlo a el codigo con el control pulsado lo arrastramos a el viewController, seria la etiqueta de arriba
    }
    
    
    @IBAction func cambiarTexto(_ sender: Any) {
        etiqueta.text = "Ya Cambie"    }
}

