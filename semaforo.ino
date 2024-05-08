// Definición de pines
const int pinRojo = 9;
const int pinAmarillo = 10;
const int pinVerde = 11;

void setup() {
  // Configurar los pines como salidas
  pinMode(pinRojo, OUTPUT);
  pinMode(pinAmarillo, OUTPUT);
  pinMode(pinVerde, OUTPUT);
}

void loop() {
  // Verde durante 6 segundos
  digitalWrite(pinRojo, LOW);
  digitalWrite(pinAmarillo, LOW);
  digitalWrite(pinVerde, HIGH);
  delay(6000); // Esperar 6 segundos
  
  // Parpadeo de verde durante 2 segundos antes de pasar al amarillo
  for(int i = 0; i < 4; i++) {
    digitalWrite(pinVerde, HIGH);
    delay(500);
    digitalWrite(pinVerde, LOW);
    delay(500);
  }
  
  // Amarillo durante 2 segundos
  digitalWrite(pinVerde, LOW);
  digitalWrite(pinAmarillo, HIGH);
  delay(2000); // Esperar 2 segundos
  
  // Rojo durante 6 segundos
  digitalWrite(pinAmarillo, LOW);
  digitalWrite(pinRojo, HIGH);
  delay(6000); // Esperar 6 segundos
  
  // Parpadeo de rojo durante 2 segundos antes de pasar al amarillo
  for(int i = 0; i < 4; i++) {
    digitalWrite(pinRojo, HIGH);
    delay(500);
    digitalWrite(pinRojo, LOW);
    delay(500);
  }
  
  // Amarillo durante 2 segundos
  digitalWrite(pinRojo, LOW);
  digitalWrite(pinAmarillo, HIGH);
  delay(2000); // Esperar 2 segundos
}
