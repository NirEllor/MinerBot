Web3 Testnet Mining Simulator

[![Node.js](https://img.shields.io/badge/Node.js-18%2B-339933?logo=node.js&logoColor=white)](https://nodejs.org/)
[![Ethereum](https://img.shields.io/badge/Ethereum-Sepolia-purple?logo=ethereum&logoColor=white)](https://ethereum.org/)
[![Docker](https://img.shields.io/badge/Docker-ready-0db7ed?logo=docker&logoColor=white)](https://www.docker.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

🤖 Automated Web3 Mining Simulator for Research

MiningBot simulates the behavior and workflow of a Web3 testnet miner —
including automated reward collection, wallet cycling, and multi-worker orchestration —
to recreate the full experience of Sepolia-style testnet liquidity generation for research environments.

It is designed for developers and researchers who need a realistic mining-like automation framework
to test distributed wallet management, automation pipelines, and blockchain-based systems.

Originally developed as part of the Data MarketPlace Research Lab
at The Hebrew University of Jerusalem.
---

## ⚙️ Features

- ⚡ **Parallel mining simulation** – Simulated concurrent faucet requests with async or Docker workers
- 🔐 **Secure wallet handling** – environment-based private-key management
- 🌐 **RPC integration** – Simulates to work with **Infura**, **Alchemy**, or any custom endpoint
- 🧠 **Smart scheduling** – timed requests to prevent faucet bans (Only Simulation)
- 🪄 **Automated fund redistribution** – balances wallets dynamically for experiments
- 🧰 **Docker-ready** deployment

---

## 🧭 Architecture
<pre>
+-------------------+     
|   Scheduler       |     
|  (Timer / Cron)   |     
+--------+----------+     
         |                
         v                
+-------------------+     
|   Mining Manager  | 
|     (Simulated    |
|  Parallel Faucet) |     
+--------+----------+     
         |                
         v                
+-------------------+     
|  Wallet Handler   |     
| (Keys / Balances) |     
+-------------------+
</pre>

---

## 🧩 Tech Stack

| Category | Tools |
|-----------|-------|
| Language | JavaScript |
| Blockchain | Ethereum Sepolia (simulated workflow) |
| Infrastructure | Optional: Infura RPC for account checks |
| Automation | Docker / asyncio |
| Security | `.env` key management |

---

## 🔧 Installation

Clone the repo:
git clone https://github.com/NirEllor/MiningBot.git
cd MiningBot

Install dependencies:
npm install

Create environment file:
cp .env.example .env

Run:
**Single instance:** npm miner.js
**Multiple instances in parallel:** runAll.bat

## ⚙️ Environment Variables
INFURA_API_KEY=your_infura_key
PRIVATE_KEY=your_private_wallet_key
WALLET_ADDRESS=0xYourWallet
MINING_INTERVAL=60   # seconds between mining cycles

## 🐳 Docker Support
docker build -t miningbot .
docker run -d --env-file .env miningbot


## 📊 Example Output
[INFO] Mining round started...
[INFO] Wallet 0x1a3f... received 0.1 SepoliaETH (Simulation)
[INFO] Balances reallocated successfully
[INFO] Sleeping for 60 seconds...

## 👨‍💻 Author
Nir Ellor
Full-Stack Developer


