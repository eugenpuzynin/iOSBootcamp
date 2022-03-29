//
//  ViewController.swift
//  App13 ARDicee
//
//  Created by Eugen Puzynin on 29.03.22.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        //create a cube
//        let cube = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0.01)
        let sphere = SCNSphere(radius: 0.2)
        //create material...
        let material = SCNMaterial()
        //...with the color red
//        material.diffuse.contents = UIColor.red
//        material.diffuse.contents = UIColor.red
        material.diffuse.contents = UIImage(named: "art.scnassets/2k_moon.jpg")
        //assign it to the cube's material
//        cube.materials = [material]
        sphere.materials = [material]
        
        //create a node: is a point in 3D space
        let node = SCNNode()
        //give it a position
        node.position = SCNVector3(x: 0, y: 0.1, z: -0.5)
        //assign node to an object to display
//        node.geometry = cube
        node.geometry = sphere
        
        //putting node in sceneview
        sceneView.scene.rootNode.addChildNode(node)
        //add lights
        sceneView.autoenablesDefaultLighting = true
        
        
        
//        // Create a new scene
//        let scene = SCNScene(named: "art.scnassets/ship.scn")!
//
//        // Set the scene to the view
//        sceneView.scene = scene
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

}
