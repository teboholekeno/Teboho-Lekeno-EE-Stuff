float cutoff = 11.80;            //Cutoff voltage
float nominal = 12.70;           //Nomial Voltage
float overvoltage = 14.00;       //Overvoltage
int analogInputVoltage = A0;
float vout = 0.0;
float vin = 0.0;
float wiper = 3500;
float potentiometer = 10000;
int value = 0;
unsigned long delayStart = 0;    //the time the delay starts.
bool delayRunning = false;       //the value is true if the delay is still on. 

void setup()
{
  pinMode(analogInputVoltage,INPUT);
  pinMode(8,OUTPUT);             //used to separate the battery from load when there is undervoltage.
  pinMode(7,OUTPUT);             //used to separate the battery from panel when the battery is fully chargered.
  pinMode(6,INPUT);              //used to monitor the overcurrent protection on the inverter.
  pinMode(9, OUTPUT);            //used for controlling the switch that reset the inverter during overload protection.

  //this pins are used to control the led's that shows the life of the battery
  pinMode(5,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(2,OUTPUT);
  pinMode(1,OUTPUT);
  pinMode(0,OUTPUT);
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

void inverter_overcurrent_protection()
{
  //CHECKING FOR OVERCURRENT (SHORT-CIRCUIT/OVERLOAD) ON THE INVERTER CIRCUIT
  if (digitalRead(6) == HIGH)        // the statement execute if the overload occured
  {
     if (delayRunning)
      {
        if (delayRunning && (millis()-delayStart >= 2000))
        {
          // toggling the switch to reset the inverter
          digitalWrite(9,HIGH);
          delay(300);
          digitalWrite(9,LOW);
    
          delayRunning = false;    
        }
      }
     else 
     {
       delayStart = millis();
       delayRunning = true; 
     }
  }
  else 
    digitalWrite(9,LOW);            // the switch will be normally closed when there is no overload detected.
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

void loop(){
//#################### Overvoltage and Undervoltage protection ####################################

  value = analogRead(analogInputVoltage);
  vout = (value * 5.0) / 1024;
  vin = vout / ((wiper/potentiometer));
  
  if (vin<0.10)
    vin=0.0;
  
  if(vin<=cutoff)
     under_and_undervoltage_switch (true, false);
  
  if(vin>=nominal && vin<=overvoltage && vin>cutoff)
     under_and_undervoltage_switch (false, false);
  
  if(vin>=overvoltage)
     under_and_undervoltage_switch (false, true);

  battery_level_display(vin);
  inverter_overcurrent_protection();
}
