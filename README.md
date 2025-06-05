# Aptos Hello World

This repository contains a simple `Move` package that demonstrates a Hello World example on the Aptos blockchain. The package lives in `hello_blockchain/` and defines a module that emits a `Hello, Aptos!` event.

## Prerequisites

- [Aptos CLI](https://github.com/aptos-labs/aptos-core/releases) installed and available in your `PATH`.

## Building

```
cd hello_blockchain
aptos move compile
```

This will compile the Move module using the Aptos CLI.

## Running

To publish the package and emit the Hello World event, use the Aptos CLI with a configured account:

```
aptos move publish --package-dir hello_blockchain
aptos move run --function hello_blockchain::hello_blockchain::emit_hello
```

Make sure your account is funded and the Aptos CLI is properly configured for your chosen network.

