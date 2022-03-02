/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package poo.cosasvarias;

import java.util.Scanner;

/**
 *
 * @author s3rzh
 */
public class Cositas {
	
	public static void main(String[] args) {
		//primo(3);
	}
	
	public static void primo(int n){
		byte i = 2;
		boolean flag = false; 
		while(flag != true){
			if(n == i){
				System.out.println("no es primo");
				break;
			}
			if(i%n == 0 || n == 2){
				flag = true;
				System.out.println("es primo");
			}
			i++;
		}
	}
	
	public static void numSecreto(){
		int secret = (byte)(Math.random() * 10) + 1; // 10 incluido. [0, 10]
		Scanner in = new Scanner(System.in);
		System.out.println("Adivina el numero del 1 al 10 :) \n");
		byte opcion;
		byte desicion = 1;
		do {
			System.out.println("introducce el numero\n");
			opcion = in.nextByte();
			if(opcion == secret){
				System.out.println("¡¡¡¡¡¡¡Ganaste!!!!! :)\n");
				System.out.println("¿Quieres seguir jugando?\n");
				desicion = in.nextByte();
				secret = (byte)(Math.random() * 10) + 1;
			}else{
				if(opcion > secret){
					System.out.println("Menor\n");
				}else{
					System.out.println("Mayor\n");
				}
			}
			
		} while (desicion != 0);
		
	}
	
	public static int cantNumeros(int n){
		int tmp = 0;
		int cant = 0;
		int n10 = 10;
		while(tmp != n){
			tmp = n % n10;
			n10*=10;
			cant++;
		}
		return cant;
	}
	
	public static boolean triangulo(double l1, double l2, double l3){
		boolean a = l1 + l2 > l3;
		boolean b = l2 + l3 > l1;
		boolean c = l1 + l3 > l2;
		return a && b && c; 
	}
	
	public static int factorial(int n){
		return n < 1 ? 1 : n * factorial(n - 1);
	}
	
	public static int sumatoria(int n){
		// sumatoria de los primero n numeros, n >= 0
		return (n * (n + 1))/2;
	}
	
	public static double redondear(){
		Scanner in = new Scanner(System.in);
		System.out.println("Escribe un numero\n");
		return Math.round(in.nextDouble());
	}
	
	public static void longitudyArea(double radio){
		double longitud, area;
		longitud = 2 * Math.PI * radio;
		area = Math.PI * Math.pow(radio, 2);
		System.out.println("Longitud es : " + longitud + ", y Area es: " + area + "\n");
	}
	
	public static double pendiente(double x1, double x2, double y1, double y2){
		return (y2 - y1) / (x2 - x1);
	}
}
