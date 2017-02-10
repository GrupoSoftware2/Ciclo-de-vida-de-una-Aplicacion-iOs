//
//  AlertTableViewController.swift
//  Ciclo de vida de una Aplicacion iOs
//
//  Created by alumno on 9/02/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class AlertTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let seccion = indexPath.section
        let fila = indexPath.row
        
        var alertController:UIAlertController
        
        if seccion == 0 {
            print ("Alert")
            switch fila {
            case 0:
                alertController = UIAlertController(title: "Alert", message: "Alerta Simple", preferredStyle: UIAlertControllerStyle.alert)
                
                self.present(alertController, animated: true, completion: {
                
                })
            case 1:
                alertController = UIAlertController(title: "Alert", message: "Alerta con boton OK", preferredStyle: UIAlertControllerStyle.alert)
                
                let accionOk  = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                    print("Presiono OK")
                })
                
                alertController.addAction(accionOk)
                self.present(alertController, animated: true, completion: {
                    
                })
                
            case 2:
                alertController = UIAlertController(title: "Alert", message: "Alerta con acciones", preferredStyle: UIAlertControllerStyle.alert)
                
                let accionOk  = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                    print("Presiono OK")
                })
                
                let accionCancel  = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: { (action) in
                    print("Presiono Cancel")
                })
                let accionEliminar  = UIAlertAction(title: "Eliminar", style: UIAlertActionStyle.default, handler: { (action) in
                    print("Presiono Eliminar")
                })
                alertController.addAction(accionOk)
                alertController.addAction(accionCancel)
                alertController.addAction(accionEliminar)
                self.present(alertController, animated: true, completion: {
                    
                })

                
            default:

                var inputTextField: UITextField?
                
                alertController = UIAlertController(title: "Alert", message: "Alerta con texto", preferredStyle: UIAlertControllerStyle.alert)
                
                let accionOk  = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                    print("Presiono OK")
                    //print("\(inputTextField?.text)")
                    print("\(inputTextField?.text)")
                    
                    
                    
                    
                })
                
                let accionCancel  = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: { (action) in
                    print("Presiono Cancel")
                })
                

                
                
                alertController.addAction(accionOk)
                alertController.addAction(accionCancel)
                alertController.addTextField(configurationHandler: { (textField) in
                    textField.placeholder="Ingrese su edad"
                    textField.textColor = UIColor.cyan
                    inputTextField = textField
                    
                })
                
                
                
                
                self.present(alertController, animated: true, completion: {
                    
                })
            }
            
        }else{
            print ("Action Sheet")
            switch fila {
            case 0:
                alertController = UIAlertController(title: "Action Sheet", message: "Action Sheet Simple", preferredStyle: UIAlertControllerStyle.actionSheet)
                
                alertController.popoverPresentationController?.sourceView = tableView.cellForRow(at: indexPath)
                
                self.present(alertController, animated: true, completion: {
                        print("Muestra el Action Sheet")
                    })
                
            case 1:

                alertController = UIAlertController(title: "Action Sheet", message: "Action Sheet Con Acciones", preferredStyle: UIAlertControllerStyle.actionSheet)
                
                let accionAceptar = UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: { (action) in
                    
                    print ("Presiono aceptar")
                })
                
                let accionCancelar = UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.cancel, handler: { (action) in

                })
                
                alertController.addAction(accionAceptar)
                alertController.addAction(accionCancelar)
                
                alertController.popoverPresentationController?.sourceView = tableView.cellForRow(at: indexPath)
                
                self.present(alertController, animated: true, completion: {
                })
                
            default:
                print("Boton Cancelar")
                alertController = UIAlertController(title: "Action Sheet", message: "Action Sheet Con Acciones", preferredStyle: UIAlertControllerStyle.actionSheet)
                
                let accionAceptar = UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: { (action) in
                    
                    print ("Presiono aceptar")
                })
                
                let accionCancelar = UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.cancel, handler: { (action) in
                    
                })
                
                let accionEliminar = UIAlertAction(title: "Eliminar", style: UIAlertActionStyle.destructive , handler: { (action) in
                    print("Presiono eliminar")
                })
                
                alertController.addAction(accionAceptar)
                alertController.addAction(accionCancelar)
                alertController.addAction(accionEliminar)
                
                alertController.popoverPresentationController?.sourceView = tableView.cellForRow(at: indexPath)
                
                self.present(alertController, animated: true, completion: {
                })
            }
        }
    }

    // MARK: - Table view data source

   /* override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    } */

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
