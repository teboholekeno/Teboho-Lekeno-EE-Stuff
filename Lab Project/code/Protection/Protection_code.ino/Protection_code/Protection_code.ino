#include <PWM.h>

float cutoff = 9.6;                           //Cutoff voltage
float nominal = 12.70;                        //Nomial Voltage
float overvoltage = 13.9;                     //Overvoltage
int analogInputVoltage = A0;  
float vout = 0.0;
float vin = 0.0;
float wiper = 100000;
float potentiometer = 10000;
unsigned long inverter_delay_start = 0;     //the time the delay starts.
unsigned long battery_delay_start = 0;  
bool inverter_delay_running = false;        //the value is true if the delay is still on.
bool battery_delay_running = false; 
unsigned long inverter_trip_time = 2;       // (measured in seconds) delay for inverter overcurrent protection during off-mode.
unsigned long battery_trip_time =  2;       // (measured in seconds) the time set to switch the system off before the overcurrent can be detected again. 
int32_t frequency = 10000;                   //frequency in Hertz
int Speaker = 6;                            // the PWM Pin to control the sound. 

void setup()
{
  pinMode(analogInputVoltage,INPUT);
  pinMode(16,INPUT);
  pinMode(8,OUTPUT);             //used to separate the battery from load when there is undervoltage.
  pinMode(7,OUTPUT);             //used to separate the battery from panel when the battery is fully chargered.
  pinMode(9, OUTPUT);            //used for controlling the switch that reset the inverter during overload protection.
  pinMode(12, OUTPUT);           //used for battery overcurrent indication

  //this pins are used to control the led's that shows the life of the battery
  pinMode(5,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(2,OUTPUT);
  pinMode(1,OUTPUT);
  pinMode(0,OUTPUT);
  
  //setup for Sound Frequency and PWM control
  //initialize all timers except for 0, to save time keeping functions.
  InitTimersSafe();              
  
  bool success = SetPinFrequencySafe(Speaker, frequency);
}

void loop(){

  int value = analogRead(analogInputVoltage);
  vout = (value * 5.0) / 1023;
  vin = vout / ((potentiometer/(potentiometer+wiper)));
    
  battery_life_control(vin);
  battery_level_display(vin);
  battery_overcurrent_protection();
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
  if (digitalRead(10) == LOW)        // the statement execute if the overload occured
  {
      digitalWrite(9,HIGH);
      inverter_delay_start = millis();
      inverter_delay_running = true; 
  }
  
  if (inverter_delay_running && (millis()-inverter_delay_start >= 1000*inverter_trip_time))
  {
     digitalWrite(9,LOW);
     inverter_delay_running = false;    
  }
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
     if (!battery_delay_running) digitalWrite(8,LOW);
  }
  else if (!undervoltage && !overvoltage)
  {
     if (!battery_delay_running) digitalWrite(8,LOW);
     digitalWrite(7,LOW);
  }
}

void battery_overcurrent_protection()
{
  if (digitalRead(16) == LOW)        // the statement execute if the overload occured
  {
      digitalWrite(8,HIGH);
      battery_delay_start = millis();
      battery_delay_running= true; 
  }
  
  if (battery_delay_running && (millis()-battery_delay_start >= 1000*battery_trip_time))
  {
     digitalWrite(8,LOW);
     battery_delay_running = false;    
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
