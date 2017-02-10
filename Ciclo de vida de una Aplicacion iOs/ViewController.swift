//
//  ViewController.swift
//  Ciclo de vida de una Aplicacion iOs
//
//  Created by alumno on 9/02/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numero = 0
    @IBOutlet weak var lblNumero: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("view Controller viewDidLoad")
        
        lblNumero.text="\(numero)"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view Controller viewDidAppear")
        
        numero = numero + 1
        
        lblNumero.text="\(numero)"
    }

    override func viewWillAppear(_ animated: Bool) {
        print("view Controller viewWillAppear")
        
        numero = numero + 1
        lblNumero.text="\(numero)"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view Controller viewWillDisappear")
        
        numero = numero + 1
        lblNumero.text="\(numero)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

