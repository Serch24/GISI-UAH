/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package poo.sesion3;

import java.util.Scanner;

/**
 *
 * @author s3rzh
 */
public class Sesion3 {

	/**
	 * @param args the command line arguments
	 */
	public static void main(String[] args) {
		System.out.println(invPalabra("monja"));
	}
	
	public static String ejercicio1(String palabra, byte n){
		String strArr[] = palabra.split("");
		int size = strArr.length;
		String a[] = new String[size];
		for (int i = 0; i < size; i++) {
			int pos = i + n;
			a[i] = strArr[pos <= (size - 1) ? pos : pos - size];
		}
		// monja -- onjam -- njamo -- jamon. esto con substring
		return String.join("", a);
	}	
	
	public static void getpos(String cadena, char letra){
		for (int i = 0; i < cadena.length(); i++) {
			if(cadena.charAt(i) == letra){
				System.out.println(i);
			}	
		}
	}
	
	public static void vocals(){
		Scanner in = new Scanner(System.in);
		System.out.println("Introduce una cadena \n");
		String cad = in.next();
		
		char voc[] = {'a', 'e' , 'i' , 'o' , 'u'};
		for (int i = 0; i < voc.length; i++) {
			byte cant = 0;
			for (int j = 0; j < cad.length(); j++) {
				if(cad.charAt(j) == voc[i]){
					cant++;
				}
			}
			if(cant != 0){
				System.out.println("Hay " + cant + " \'" + voc[i] + "\'");
			}
		}
	}
	
	public static String invPalabra(String palabra){
		String palabraInv = "";
		for (int i = palabra.length() - 1; i >= 0; i--) {
			palabraInv += palabra.charAt(i);
		}
		return palabraInv;
	}
	
}
