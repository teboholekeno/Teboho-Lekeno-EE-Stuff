float cutoff = 11.80;                              //Cutoff voltage
float nominal = 12.70;                             //Nomial Voltage
float overvoltage = 13.9;                          //Overvoltage
int analogInputVoltage = A0;
int analogBatteryCurrent = A2;  
float vout = 0.0;
float vin = 0.0;
float wiper = 100000;
float potentiometer = 10000;
unsigned long inverter_delay_start = 0;                       //the time the delay starts.
unsigned long battery_delay_start = 0;  
bool inverter_delay_running = false;                          //the value is true if the delay is still on.
bool battery_delay_running = false; 
float current_sensor_sensitivity = 0.070375;  //measured in V/A
float maximum_current_discharge = 0.38;          //measured in A.

void setup()
{
  pinMode(analogInputVoltage,INPUT);
  pinMode(8,OUTPUT);             //used to separate the battery from load when there is undervoltage.
  pinMode(7,OUTPUT);             //used to separate the battery from panel when the battery is fully chargered.
  pinMode(6,INPUT);              //used to monitor the overcurrent protection on the inverter.
  pinMode(9, OUTPUT);            //used for controlling the switch that reset the inverter during overload protection.
  pinMode(12, OUTPUT);           //used for battery overcurrent indication

  //this pins are used to control the led's that shows the life of the battery
  pinMode(5,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(2,OUTPUT);
  pinMode(1,OUTPUT);
  pinMode(0,OUTPUT);
}

void battery_life_display (int);
void under_and_undervoltage_switch (bool, bool);
void inverter_overcurrent_protection();
void battery_level_display(float);
void battery_life_control (float);
void battery_overcurrent_protection(int);

void loop(){

  int value = analogRead(analogInputVoltage);
  int digitalBatteryCurrent = analogRead(analogBatteryCurrent);
  
  vout = (value * 5.0) / 1024;
  vin = vout / ((potentiometer/(potentiometer+wiper)));
    
  battery_life_control(vin);
  battery_level_display(vin);
  battery_overcurrent_protection(digitalBatteryCurrent);
  inverter_overcurrent_protection();
}

void battery_life_control (float vin)
{
    if(vin<=cutoff)
     under_and_undervoltage_switch (true, false);
  
  if(vin>=nominal && vin<=overvoltage && vin>cutoff)
     under_and_undervoltage_switch (false, false);
  
  if(vin>=overvoltage)
     under_and_undervoltage_switch (false, true);
}

void battery_level_display(float vin)
{
  //##############BATTERY LEVEL DISPLAY###########################
  if (((vin-cutoff)/(overvoltage-cutoff))*100 <= 0)
     battery_life_display (0);
  else if (((vin-cutoff)/(overvoltage-cutoff))*100 >= 1 && ((vin-cutoff)/(overvoltage-cutoff))*100 < 20)
     battery_life_display (1);
  else if (((vin-cutoff)/(overvoltage-cutoff))*100 >= 20 && ((vin-cutoff)/(overvoltage-cutoff))*100 < 40)
     battery_life_display (2);
  else if (((vin-cutoff)/(overvoltage-cutoff))*100 >= 40 && ((vin-cutoff)/(overvoltage-cutoff))*100 < 60)
     battery_life_display (3);
   else if (((vin-cutoff)/(overvoltage-cutoff))*100 >= 60 && ((vin-cutoff)/(overvoltage-cutoff))*100 < 80)
     battery_life_display (4);
   else if (((vin-cutoff)/(overvoltage-cutoff))*100 >= 80 && ((vin-cutoff)/(overvoltage-cutoff))*100 < 100)
     battery_life_display (5);
  else if (((vin-cutoff)/(overvoltage-cutoff))*100 >= 100)
     battery_life_display (6);
}

void inverter_overcurrent_protection()
{
  //CHECKING FOR OVERCURRENT (SHORT-CIRCUIT/OVERLOAD) ON THE INVERTER CIRCUIT
  if (digitalRead(10) == HIGH)        // the statement execute if the overload occured
  {
     if (inverter_delay_running)
      {
        if (inverter_delay_running && (millis()-inverter_delay_start >= 2000))
        {
          // toggling the switch to reset the inverter
          digitalWrite(9,HIGH);
          delay(300);
          digitalWrite(9,LOW);
    
          inverter_delay_running = false;    
        }
      }
     else 
     {
       inverter_delay_start = millis();
       inverter_delay_running = true; 
     }
  }
  else 
    digitalWrite(9,LOW);            // the switch will be normally closed when there is no overload detected.
}

void under_and_undervoltage_switch (bool undervoltage, bool overvoltage)
{
  if (undervoltage)
  {
     digitalWrite(8,HIGH);
     digitalWrite(7,LOW);
  }
  else if (overvoltage)
  {
     digitalWrite(7,HIGH);
     digitalWrite(8,LOW);
  }
  else if (!undervoltage && !overvoltage)
  {
     digitalWrite(8,LOW);
     digitalWrite(7,LOW);
  }
}

void battery_life_display (int level)
{
   for (int control = 0; control < 6; control++)
   {
     if (control < level)
     {
        digitalWrite(5-control,HIGH);
     }
     else
     {
       digitalWrite(5-control,LOW);
     }
   }
}
<<<<<<< HEAD
=======

void battery_overcurrent_protection(int digitalBatteryCurrent)
{
  if (digitalBatteryCurrent >= 512)  //this means the battery is use.
  {
    if ((static_cast<float>(digitalBatteryCurrent) - 512)/((current_sensor_sensitivity/5)*1023) >= maximum_current_discharge)  //there is overcurrent being drawn from the battery
    {
      if (battery_delay_running)
      {
        if (battery_delay_running && (millis()-battery_delay_start >= 2000))
        {
          // toggling the switch to reset the whole system
          digitalWrite(12,HIGH);
          delay(300);
          digitalWrite(12,LOW);
    
          battery_delay_running = false;    
        }
      }
     else 
     {
       battery_delay_start = millis();
       battery_delay_running = true; 
     }
  }
  else
    digitalWrite(12,LOW);
  }
}

>>>>>>> 50e3be1f2260b856e7537e2fe02f96a173c9fd7a
