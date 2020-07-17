## Ethereum Solidity

Solidity is a statically typed, contract-oriented, high-level programming language for implementing smart contracts on the Ethereum platform.

## Background

Solidity is a statically-typed, curly-braces language designed for developing smart contracts that run on the Ethereum Virtual Machine. Smart contracts are programs that are executed inside a peer-to-peer network where nobody has special authority over the execution, and thus they allow for the implementation of tokens of value, ownership, voting along with other kinds of logic. When deploying contracts, you should use the latest released version of Solidity. This is because breaking changes as well as new features and bug fixes are introduced regularly.

## Build and Install

Instructions regarding how to build and install the Solidity compiler can be found via the [documentation](https://solidity.readthedocs.io/en/latest/installing-solidity.html#building-from-source).

## Example

A "Hello World" program in Solidity is presented below for the sake of convention:

```
pragma solidity ^0.6.0;

contract HelloWorld {
  function greeting() external pure returns (string memory) {
    return "Hello World!";
  }
}
```

You can use [Remix](https://remix.ethereum.org/), a browser-based IDE, to get started with Solidity.

Here are some (more useful) example contracts:

1. [Voting](https://solidity.readthedocs.io/en/latest/solidity-by-example.html#voting)
2. [Blind Auction](https://solidity.readthedocs.io/en/latest/solidity-by-example.html#blind-auction)
3. [Safe Remote Purchase](https://solidity.readthedocs.io/en/latest/solidity-by-example.html#safe-remote-purchase)
4. [Micropayment Channel](https://solidity.readthedocs.io/en/latest/solidity-by-example.html#micropayment-channel)

## Documentation

Refer to this [link](https://solidity.readthedocs.io) to access the documentation.

## Development

Solidity is still under development. Contributions are always welcome!

Please follow the [Developers Guide](https://solidity.readthedocs.io/en/latest/contributing.html) if you would like to help.
