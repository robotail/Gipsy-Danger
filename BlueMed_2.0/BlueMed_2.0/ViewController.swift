//
//  ViewController.swift
//  BlueMed_2.0
//
//  Created by Lucas Oliveira Manhaes Gomes(OMG) on 22/08/17.
//  Copyright © 2017 Lucas OMG. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate{

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var meuActivity: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //No codigo abaixo é criada uma web-view com um Activity(loading),
       
        meuActivity.startAnimating()
        
        webView.delegate = self
        
        //atribuindo e criando a URL e o REQUEST
        let cibernetSolutionsURL = URL(string:"http://portal.alvorecer.org.br/App/Mobile/Login")
        let cibernetSolutionsURLRequest = URLRequest(url: cibernetSolutionsURL!)
        webView.loadRequest(cibernetSolutionsURLRequest)
        
        meuActivity.hidesWhenStopped = true //escondendo o activity quando a webView carregar
    }
    
        //Passando a informação para o Acwtivy encerrar quando a webView for carregada
    func webViewDidFinishLoad(_ webView: UIWebView) {
        meuActivity.stopAnimating()
    }
    
    //Tratamento de erro no codigo, exibir aviso caso a webView apresente erro
    //Retornando erro 999 - Contatos
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

