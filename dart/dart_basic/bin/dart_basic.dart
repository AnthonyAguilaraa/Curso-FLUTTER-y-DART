import 'dart:io';

import 'package:dart_basic/Helado';

void main(List<String> arguments) {
 
  nullability();
  
}

/*
+-------------------------------------+
|           VARIABLES                 |
+-------------------------------------+
*/

void greetings(String name) {
  var name = 'Anthony';
  var age = 21;

  print(" Hola, $name");
}

void numberExample() {
  // Variable numericas
  int age = 21;
  int test = -56;

  double pi = 3.14;

  num number = 10;
}

void stringExample() {
  // Variable cadenas de texto
  String name = 'Anthony';
  String currentAge = 'Mi edad es 21 años';
  //String fullText = name + ' ' + currentAge;
  String fullText = "Soy $name y tengo $currentAge";
  print(fullText);
}

void booleanExample() {
  // Variable booleanas
  bool imHappy = true;
}

void dynamicExample() {
  // Variable dynamic
  dynamic example = 'Hola soy un ejemplo';
  example = 123;
  print(example);
}

void fixedTypesExample() {
  // Tipos Fijos
  final String example2 = 'Anthony';
  const String example3 = 'Anthony';
}

void conversionExamples() {
  // Conversiones
  String toNumber = '23';
  int newNumber = int.parse(toNumber);
  print(newNumber);

  int numberToString = 234;
  String newString = numberToString.toString();
  print(newString);

  String toDouble = '3.14';
  double newDouble = double.parse(toDouble);
  print(newDouble);
}

void mathOperationsExamples() {
  // Operaciones Matematicas
  int a = 1;
  int b = 4;

  // int result = a + b; //Suma
  // int result = a - b; //Resta
  // int result = a * b; //Multiplicacion
  // double result = a / b; //Division decimal
  // int result = a ~/ b; //Division entera
  // int result = a % b; //Modulo

  //a += b; //Suma
  // a  -= b; //Resta
  // a *= b; //Multiplicacion
  // a ~/= b; //Division entera
  // a %= b; //Modulo

  // a++;
  // a--;

  //print('Resultado es: $a');
  print("Resultado es: ${--a}");
}

/*
+-------------------------------------+
|           Condicionales             |
+-------------------------------------+
*/

void ifExamples() {
  int userAge = 18;

  if (userAge >= 18) {
    print("Eres mayor de edad");
  } else {
    print("Eres menor de edad");
  }

  (userAge >= 18) ? print("Eres mayor de edad") : print("Eres menor de edad");

  int experienceYears = 5;

  if (experienceYears > 8) {
    print("Eres un programador SENIOR");
  } else if (experienceYears >= 5) {
    print("Eres un programador MID");
  } else {
    print("Eres un programador Junior");
  }

  print("Introduce el día de la semana:");
  int numberOfTheWeek = int.parse(stdin.readLineSync()!);

  if (numberOfTheWeek == 1) {
    print("Lunes");
  } else if (numberOfTheWeek == 2) {
    print("Martes");
  } else if (numberOfTheWeek == 3) {
    print("Miercoles");
  } else if (numberOfTheWeek == 4) {
    print("Jueves");
  } else if (numberOfTheWeek == 5) {
    print("Viernes");
  } else if (numberOfTheWeek == 6) {
    print("Sábado");
  } else if (numberOfTheWeek == 7) {
    print("Domingo");
  } else {
    print("El número no es válido");
  }
}

void switchExamples() {
  print("Introduce el día de la semana:");
  int numberOfTheWeek = int.parse(stdin.readLineSync()!);

  switch (numberOfTheWeek) {
    case 1:
      break;
    case 2:
      print("Martes");
    case 3:
      print("Miércoles");
    case 4:
      print("Jueves");
    case 5:
      print("Viernes");
    case 6:
      print("Sábado");
    case 7:
      print("Domingo");
    default:
      print("Número no");
  }
}

/*
+-------------------------------------+
|           MÉTODOS                   |
+-------------------------------------+
*/

void simpleFunction() {
  print("Hola desde una función simple");
}

void inputFunction(int a, int b) {
  int result = a + b;
  print("El resultado de la suma es: $result");
}

int outputFunction() {
  int a = 5;
  int b = 10;
  return a + b;
}

int completeFunction(int a, int b) {
  return a + b;
}

int completeFunction2(int a, int b) => a + b;

void optionalFunction({String name = 'Invitado', int age = 0}) {
  print("Hola $name, tienes $age años");
}

void optionalFunction2(String name, [int age = 0]) {
  print("Hola $name, tienes $age años");
}

/*
+-------------------------------------+
|           ESTRUCTURA DE DATOS       |
+-------------------------------------+
*/
// Listas
void listExample() {
  List<String> names = ['Anthony', 'Juan', 'Pedro'];
  List<String> names2 = ['Manuel', 'Maria', 'Ana'];

  // print(names[2]);
  // print(names.last);
  // print(names.first);
  // print(names.length);
  // print(names[names.length-1]);
  // names[2] = 'Carlos';
  // names.insert(1, 'Luisa');
  // names.add('Sofia');
  // names.addAll(names2);
  // names.remove('Juan');
  // names.removeAt(0);
  // names.removeLast();
  // names.clear();
  print(names);
}

// Sets
void setExample() {
  Set<String> names = {'Anthony', 'Juan', 'Pedro'};

  // print(names.contains('Juan'));
  names.add('Sofia');
  names.remove('Pedro');
  names.clear();
  names.length;

  bool result = names.contains('Anthony');
  if (result) {
    print('El nombre sí está en el set');
  } else {
    print('El nombre no está en el set');
  }
  print(names);

  List<String> newNames = ['Anthony', 'Juan', 'Pedro'];
  Set<String> newNamesSet = Set.from(newNames);
  print(newNamesSet);
}

// Maps

void mapExample() {

  Map<String, int> people = {

    "Anthony": 21,
    "Juan": 25,
    "Pedro": 30};

    people["Maria"] = 28;
    people.remove("Juan");
    people.addAll({"Luisa": 22, "Carlos": 27});
    people.remove("Pedro");
people.containsValue(21);
people.length;
people.clear();

    print(people);
}


    // Bucles 

  void listLoop(){
    List<int> numbers = [1, 2, 3, 4, 5];

  for (int i = 0; i < numbers.length; i++) {
    print("numero: ${numbers[i]}");
  }

  for (var element in numbers) {
    print("numero recorrido con for in: $element");
  }

  numbers.forEach(print);
  }

  void setLoop(){
    Set<int> numbers = {1, 2, 3, 4, 5};

    for (var element in numbers){
      print("numero del set: $element");
    }

     numbers.forEach(print);
  }

  void mapLoop(){
    Map<String, int> numbers = {
      "one": 1,
      "two": 2,
      "three": 3,
      "four": 4,
      "five": 5
    };


    for (var element in numbers.entries){
      print("Clave: ${element.key}, Valor: ${element.value}");
    }

    numbers.forEach((key, value) {
      print("Clave: $key, Valor: $value");
    });
  }
    // Nullabilidad
void nullability (){

String? name = "Anthony";

name = "";
name = null;

String expample = name ?? "Invitado";

name ??= "Invitado 2";


Helado? helado = Helado();

if (name != null){
  print("Hola $name");

 
}
} 
/*
+-------------------------------------+
|           EJERCICIOS                |
+-------------------------------------+
*/

void exercise1(String date) {
  /*
    📌 EJERCICIO 1: CALCULADORA DE EDAD

    ✅ Objetivo:
    Escribe un programa en Dart que pida al usuario su año de nacimiento
    y calcule su edad actual.

    🔹 Pasos a seguir:
    1️⃣ Pedir al usuario su año de nacimiento (leerlo como String).
    2️⃣ Convertir el año de nacimiento a un número entero.
    3️⃣ Calcular la edad restando el año de nacimiento al año actual (2025).
    4️⃣ Mostrar el resultado en un mensaje como: "Tienes X años."
  */

  const int currentYear = 2025;
  int ageFinal = currentYear - int.parse(date);
  print('Tienes $ageFinal años');

  // Ejercicio 1: Calcular la edad a partir del año de nacimiento por consola
  // print("Introduce tu año de nacimiento:");
  // String date1 = stdin.readLineSync()!;
  // const int currentYear1 = 2025;
  // int ageFinal1 = currentYear1 - int.parse(date1);
  // print('Tienes $ageFinal1 años');
}

void exercise2() {
  /*
    📌 EJERCICIO 2: CALCULADORA DE PROPINA

    ✅ Objetivo:
    Escribe un programa en Dart que calcule cuánto debe pagar cada persona 
    después de dividir la cuenta y agregar una propina.

    🔹 Pasos a seguir:
    1️⃣ Pedir al usuario el total de la cuenta.
    2️⃣ Pedir el porcentaje de propina a agregar.
    3️⃣ Calcular el total a pagar sumando la propina.
    4️⃣ Pedir el número de personas para dividir la cuenta.
    5️⃣ Calcular cuánto debe pagar cada persona.
    6️⃣ Mostrar el resultado en pantalla.
  */

  // Ejercicio 2: Calcular el pago por persona en una cuenta de restaurante
  double totalCuenta = 150.75;
  double propina = totalCuenta * 0.15;
  double totalPagar = totalCuenta + propina;
  int numPersonas = 3;
  double pagarPorPersona = totalPagar / numPersonas;
  //print('Cada persona debe pagar: ${pagarPorPersona.toStringAsFixed(2)}');
  //print('Cada persona debe pagar: \$${pagarPorPersona.toStringAsFixed(2)}');
}

void exercise3() {
  /*
    📌 EJERCICIO 3: IDENTIFICAR NÚMEROS POSITIVOS Y NEGATIVOS

    ✅ Objetivo:
    Escribe un programa en Dart que determine si un número ingresado 
    por el usuario es positivo, negativo o cero.
  */

  print("Ingresar un numero positivo, negativo o cero:");
  int numberInput = int.parse(stdin.readLineSync()!);

  if (numberInput > 0) {
    print("Numero positivo");
  } else if (numberInput < 0) {
    print("El numero es negativo");
  } else {
    print("El numero es cero");
  }
}

void exercise4() {
  /*
    📌 EJERCICIO 4: MESES DEL AÑO

    ✅ Objetivo:
    Escribe un programa en Dart que reciba un número entre 1 y 12 
    e imprima el nombre del mes correspondiente del año.
  */

  print("Introduce un número:");
  int userNumber = int.parse(stdin.readLineSync()!);

  switch (userNumber) {
    case 1:
      print("Enero");
    case 2:
      print("Febrero");
    case 3:
      print("Marzo");
    case 4:
      print("Abril");
    case 5:
      print("Mayo");
    case 6:
      print("Junio");
    case 7:
      print("Julio");
    case 8:
      print("Agosto");
    case 9:
      print("Septiembre");
    case 10:
      print("Octubre");
    case 11:
      print("Noviembre");
    case 12:
      print("Diciembre");
    default:
      print("El mes no es válido");
  }
}

// void excersice5(){

//   var lista = [1, 2, 3, 4, 5, 6];
  
//   for (var i = 0; i < lista.length; i++) {
//     int par = lista[i];

//     if (par % 2 == 0){
//     print("La suma de los números pares es: $par");
    
//   }


// }

void excersice5(){

  var lista = [1, 2, 3, 4, 5, 6];
  
  for (var i = 0; i < lista.length; i++) {
    int par = lista[i];

    print(par);
	if (par %2 == 0){
    par += par;
	print("La suma de los números pares es: $par");
}else{
print("No hay números pares");
}
   }


}




void excersice5a() {

  List<int> example = [1, 2, 3, 4, 5, 6];
  int result = 0;

  for (int number in example) {
    if (number % 2 == 0) {
      result += number;
    }
  }
  print("El resultado es $result");
}


void excersice6 () {

  List<String> lista = ['Ana', 'Luis', 'Carlos', 'Ana', 'Marta', 'Sofía'];

  Set<String> listaSinDuplicados = Set.from(lista);
  for (var element in listaSinDuplicados) {
    print("Nombres sin duplicados: $element");
    
  }

}

void excersice7(){

  List<String> lista = ['Ana', 'Luis', 'Carlos', 'Ana', 'Marta', 'Sofía'];

  Map<String, int> contadorNombres = {};

  for (var nombre in lista) {
    if (contadorNombres.containsKey(nombre)) {
      contadorNombres[nombre] = contadorNombres[nombre]! + 1;
      print(contadorNombres);
    } else {
      contadorNombres[nombre] = 1;
    }
  }
}