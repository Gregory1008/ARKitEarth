//
//  EarthNode.swift
//  3DEarth
//
//  Created by Roland Herzfeld on 27.07.18.
//  Copyright © 2018 Roland Herzfeld. All rights reserved.
//

import SceneKit


class EarthNode: SCNNode {
    override init() {
        super.init()
        self.geometry = SCNSphere(radius: 0.1)
        self.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "Diffuse")
        self.geometry?.firstMaterial?.specular.contents = UIImage(named: "Specular")
        self.geometry?.firstMaterial?.emission.contents = UIImage(named: "Emission")
        self.geometry?.firstMaterial?.normal.contents = UIImage(named: "Normal")
        
        self.geometry?.firstMaterial?.shininess = 50
        
        let action = SCNAction.rotate(by: CGFloat.pi * 2, around: SCNVector3(x: 0, y: 1, z: 0), duration: 8.0)
        let repeatAction = SCNAction.repeatForever(action)
        self.runAction(repeatAction)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
