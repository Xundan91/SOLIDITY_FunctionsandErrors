# Solidity Contract: RequireAssertRevert

This Solidity contract demonstrates the usage of `require()`, `assert()`, and `revert()` statements for error handling and validation. The contract includes functionalities for managing a balance and restricting access to certain functions to the owner of the contract.

## Contract Overview

The `RequireAssertRevert` contract includes:
- Setting the initial owner of the contract
- Functions to add and reduce balance
- Error handling using `require()`, `assert()`, and `revert()`

## Key Features

- **Owner Restriction**: Only the owner of the contract can execute certain functions.
- **Balance Management**: Allows the owner to add and reduce the contract balance.
- **Custom Error Handling**: Uses custom errors for detailed revert messages.
- **Assertions**: Ensures critical invariants using `assert()`.

## Usage

### Constructor

The constructor sets the initial owner of the contract to the deployer and initializes the balance to 0.

```solidity
constructor() {
    balance = 0;
    addRess = msg.sender;
}
```

## Functions Overview

### AddBalance

This function allows the owner to add to the contract balance. It ensures that no overflow occurs using `assert()`.

```solidity
function addBalance(uint _sendbalance) public onlyowner {
    balance += _sendbalance;
    assert(balance >= _sendbalance);
}
```


### ReduceBalance
```solidity
function reduceBalance(uint _reducebalance) public onlyowner {
    if (balance < _reducebalance) {
        revert sendError("amount left is", balance);
    }
    balance -= _reducebalance;
    assert(balance >= 0);
}
```

### Error Handling
## require()
Used in the onlyowner modifier to ensure that only the owner can call certain functions.

```solidity
Copy code
modifier onlyowner() {
    require(addRess == msg.sender, "he is not the Owner");
    _;
}
```

## assert()
Used to check for conditions that should always be true, ensuring no overflow or underflow occurs.

```solidity
assert(balance >= _sendbalance);
assert(balance >= 0);
```
## revert()

```solidity
error sendError(string, uint);
if (balance < _reducebalance) {
    revert sendError("amount left is", balance);
}
```
## Usage
The addBalance and reduceBalance functions are used to manage the contract balance, while require(), assert(), and revert() ensure proper error handling and validation.


### Installing

* Clone the repository to your local machine:

```sh
>https://github.com/malehacker/project_RequireAsserRevert.git
```

## Executing program
Open the contract file Project.sol in your preferred Solidity development environment (e.g., Remix).
Compile the contract:
```sh
In Remix, click on the "Solidity Compiler" tab and then "Compile Project.sol"
```

Deploy the contract to your chosen Ethereum network (e.g., a local test network or the Ethereum mainnet):
```solidity
///make sure that
pragma solidity ^0.8.0;
// In Remix, click on the "Deploy & Run Transactions" tab, select your environment, and deploy the contract
```
Interact with the contract using the deployed instance. You can call the mint and burn functions to manage token supply.

## Help
For common problems or issues, ensure you have the correct Solidity version specified in the contract. If you encounter errors related to insufficient balance or contract deployment, double-check the addresses and values being used.

```sh
For additional help, refer to the Remix documentation or Solidity documentation
```
## Contributors Details

<table>
  <tr>
    <th>S.no </th>
    <th>Name</th>
    <th>Contact Info</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Kundan Kumar</td>
    <td>kundansingh023230@gmail.com</td>
  </tr>
</table>

## License

This project is licensed under the MIT License .see the LICENSE file for details
