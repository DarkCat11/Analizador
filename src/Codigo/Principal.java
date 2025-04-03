/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Codigo;

import Codigo.FrmPrincipal;
import java.io.File;

public class Principal {

    public static void main(String[] args) {
        String ruta = "C:/Users/PC/Documents/NetBeansProjects/Analizador/src/Codigo/Lexer.flex";
        generarLexer(ruta);
        new FrmPrincipal().setVisible(true);
    }

    public static void generarLexer(String ruta) {
        File archivo = new File(ruta);
        JFlex.Main.generate(archivo);
        
    }
}

