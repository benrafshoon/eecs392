#include <Wire.h>

int power_down = 9;//purple
int reset = 8;//brown

int cameraAddress = 0x21; //0x21 is the 7 bit address, but the datasheet refers to 8 bit addresses 42 (write)
//43 (read)


byte readCameraRegister(byte cameraRegister) {
  Wire.beginTransmission(cameraAddress);
  Wire.write(cameraRegister);
  Wire.endTransmission();
  Wire.requestFrom(cameraAddress, 1);
  if(Wire.available()) {
    byte readByte =  Wire.read();
    Serial.print("Read from register 0x");
    Serial.print(cameraRegister, HEX);
    Serial.print(": 0x");
    Serial.println(readByte, HEX);
    return readByte;
  } else {
    Serial.print("Unable to read from register 0x");
    Serial.println(cameraRegister, HEX);
  }
}

void writeCameraRegister(byte cameraRegister, byte data) {
  Wire.beginTransmission(cameraAddress);
  Wire.write(cameraRegister);
  Wire.write(data);
  Wire.endTransmission();
  Serial.print("Write to register 0x");
  Serial.print(cameraRegister, HEX);
  Serial.print(": 0x");
  Serial.println(data, HEX);
}

void setup() {
  pinMode(reset, OUTPUT);
  digitalWrite(reset, LOW);
  
  pinMode(power_down, OUTPUT);
  digitalWrite(power_down, LOW);
  
  Serial.begin(9600);
  Wire.begin();
  
}

void loop() {
  readCameraRegister(0x12);
  writeCameraRegister(0x12, 0x00);
  readCameraRegister(0x12);
  delay(1000);
}