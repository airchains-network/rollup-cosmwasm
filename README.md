![Project Logo](https://www.airchains.io/assets/logos/airchains-cosmwasm-rollup-full-logo.png) 

This repository hosts the fork of `Wasmd`, an implementation of the Cosmos SDK module `x/wasm` that enables the execution of WebAssembly (wasm) bytecode on a Cosmos chain. This project aims to extend and enhance the capabilities of wasm smart contracts within the Cosmos ecosystem.

## Table of Contents


  - [Introduction](#introduction)
  - [Features](#features)
  - [Installation](#installation)
    - [**Step 1**](#step-1)
    - [Configuration Setup](#configuration-setup)
      - [Creating the Config Folder and File](#creating-the-config-folder-and-file)
    - [**Step 2**](#step-2)
    - [**Step 3**](#step-3)
  - [Acknowledgements](#acknowledgements)
  - [License](#license)

## Introduction

`Wasmd` is at the forefront of integrating wasm smart contracts into the Cosmos network. This fork is dedicated to expanding its functionalities, ensuring EVM compatibility, and enhancing interoperability with other blockchains in the Cosmos ecosystem.

## Features

- **Smart Contract Compatibility**: Allows smart contracts to run seamlessly on Cosmos.
- **Scalability**: Leverages Cosmos' scalability features for enhanced performance.
- **Interoperability**: Connects easily with other chains in the Cosmos network.

## Installation
Provide step-by-step installation instructions, like so:

### **Step 1**

### Configuration Setup

To properly configure the EVM-based Cosmos Chain, you need to set up a `config.json` file in the `config` folder.

#### Creating the Config Folder and File

1. **Create the Config Folder:** Create a new folder named `config` in the root directory of the project. Use the following command in your terminal:

   ```bash
   mkdir config
2. **Create the Config File:** Create a new file named `config.json` in the `config` folder. Use the following command in your terminal:

   ```bash
    touch config/config.json
    ```
#### Configuring the Config File

```bash
{
  "chainInfo": 
    {
        "chainID":  "aircosmic_5501-1107",
        "key":      "dummy",
        "moniker":  "test-evm-rollup"
    }
}
```

### **Step 2**

To Initalise a New Chain with the default configuration, run the following command:

```
sh setup.sh
```

### **Step 3**

To Start the Chain from the Same Block Height Where Stopped, run the following command:

```bash
sh start-chain.sh
```

## Acknowledgements

This project builds upon the foundational work done by the CosmWasm team. We extend our gratitude and acknowledge their significant contributions to the Cosmos ecosystem. For the original CosmWasm repository and their amazing work, visit [CosmWasm GitHub Repo](https://github.dev/CosmWasm/cosmwasm).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
