#define LED_RED PIN_P0_24 //Red, Low Active
#define LED_GREEN PIN_P0_25 //Green, Low Active
#define LED_BLUE PIN_P0_26 //Blue, Low Active

void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(LED_BLUE, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(LED_BLUE, HIGH);  // turn the LED on (HIGH is the voltage level)
  delay(1000);                      // wait for a second
  digitalWrite(LED_BLUE, LOW);   // turn the LED off by making the voltage LOW
  delay(1000);                      // wait for a second
}
