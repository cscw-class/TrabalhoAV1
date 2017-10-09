




//Declaracao de variável
//VAX LET

// escopo de função com var
function doSomething() {
  var a = 1;
  if (true) {
    var b = 2; // b é declarado dentro do if mas é visível fora
  }
  var c = a + b; // 3
}

//escopo de bloco com let
function doSomethingElse() {
  let a = 1
  if (true) {
    let b = 2 // b é declarado dentro do if e não é visível fora
  }
  let c = a + b // Uncaught ReferenceError: b is not defined
}



//Parâmetro de funções
//JavaScript (ES5)

ar multiply = function(x, y) {
   y = y | 1;
   return x * y;
};

multiply(3, 2); // 6
multiply(3); // 3


//JavaScript (ES6)
const multiply = (x, y = 1) => { //Basta adicionar o valor default na definição do parâmetro desejado
  return x * y
}

multiply(3, 2) // 6
multiply(3) // 3


//Classes
// construtor / getters and setters

class Animal {
  constructor(name) {
    this._name = name
  }

  get name() {
    return this._name
  }

  set name(name) {
    this._name = name
  }
}

const animal = new Animal('cachorro')
animal.name // cachorro
animal.name = 'gato'
animal.name // gato

//herança

class Animal {
  constructor(name) {
    this._name = name
  }
   
  speak() {
    console.log(`${this._name} faz barulho`)
  }
}

class Cachorro extends Animal {
  speak() {
    console.log(`${this._name} late`)
  }
}

class Gato extends Animal {
  speak() {
    console.log(`${this._name} mia`)
  }
}

const cachorro = new Cachorro('Lion')
cachorro.speak() // Lion late

const gato = new Gato('Nyx')
gato.speak() // Nyx mia


https://medium.com/@matheusml/o-guia-do-es6-tudo-que-voc%C3%AA-precisa-saber-8c287876325f