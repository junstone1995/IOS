//
//  PageControll.swift
//  IOS_myAssets
//
//  Created by Junseok Lee on 2021/10/29.
//

import SwiftUI

struct PageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.addTarget(
            context.coordinator,
            action: #selector(Coordinator.updateCurrentPage(sender:)),
            for: .valueChanged)
        return control
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.currentPage = currentPage
    }
    
    class Coordinator: NSObject{
        var control: PageControl
        
        init(_ control: PageControl){
            self.control = control
        }
        
        @objc func updateCurrentPage(sender: UIPageControl){
            control.currentPage = sender.currentPage
        }
    }
}
