# Web3Ladies Week 3 Assignment Project by Oma

This project demonstrates a smart contract that records database of students in a class. This Project hinted the Knowledge of;
- struct
- arrays
- variable data types
- Using a forloop in solidity
- if/else statements in solidity

## Difference between View Functions and pure functions in Solidity

- **View Functions:** These functions are read-only function, which ensures that state variables cannot be modified after calling them.
- **Pure Functions:** These functions do not read or modify the state variables, which returns the values only using the parameters passed to the function or local variables present in it.

## Difference between Payable datatype and Nonpayable function

- **Payable Function:** A payable modifier allows a function to receive ether while being called.
- **Nonpayable:** This modifier signifies that a variable cannot receive ether when its called.

## Difference between Constant datatype and Immutable datatype

- **Constant datatype:** The value of a constant datatype has to be a constant at compile time and it has to be assigned where the variable is declared.
- **Immutable datatype:**Immutable variables can be assigned an arbitrary value in the constructor of the contract or at the point of their declaration. They can be assigned only once and can, from that point on, be read even during construction time.

## Difference between Read function and write function

- **Read Function:** This is a function that can only get data that is stored.
- **Write Function:** This is a function that can take in data. Data can be inputed into them.

**Deployed Adress -  0xBB047A27bd0885bfce74A5EaaaA39199543096A0**