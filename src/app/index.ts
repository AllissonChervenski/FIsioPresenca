class Greeter {
  constructor(private name: string) {}

  greet() {
    console.log(`Hello, ${this.name}!`);
  }
}

const greeter = new Greeter('World');
greeter.greet();
