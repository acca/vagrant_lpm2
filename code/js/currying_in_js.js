var greetCurried = function(greeting) {
  return function(name) {
    console.log(greeting + ", " + name);
  };
};

// Build od a partial function
var greetSaludos = greetCurried("Saludos");
greetSaludos("Daniele");

greetCurried ("Ciao") ("Daniele");