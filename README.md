# 🏥 Decentralized Medical Records Smart Contract

## 📝 Overview

This project implements a **Decentralized Medical Records Management System** using Solidity. It allows patients to securely store and share their medical history on the blockchain while ensuring that only authorized doctors can access or update their records.

## ❓ Why This Project?

Medical records contain highly sensitive information, and traditional healthcare systems face several challenges:

- 🔓 **Data Breaches**: Centralized databases are prone to hacking.
- 🚫 **Unauthorized Access**: Patients often have little control over who accesses their records.
- 🔄 **Interoperability Issues**: Medical records are stored in different hospital systems, making it difficult for doctors to access a patient's full history.
- 🗑 **Loss of Records**: Paper-based or centralized electronic records can be lost due to mismanagement or system failures.

With blockchain technology, we can:

✅ **Enhance Security**: Data is stored immutably and protected from unauthorized modifications.

✅ **Ensure Transparency**: Patients have full control over who accesses their records.

✅ **Improve Accessibility**: Medical history is always available and cannot be lost.

✅ **Enable Decentralization**: No single entity has control over patient data.

## ✨ Features

- 🏥 **Patient Registration**: Users can register as patients and create a unique medical profile.
- 👨‍⚕️ **Doctor Registration**: Doctors must register to gain permission to access patient data.
- 🔐 **Permission-Based Access**: Patients can grant specific doctors permission to view/update their records.
- 📜 **Medical Record Updates**: Authorized doctors can securely update a patient’s medical history.
- 🚨 **Emergency Access**: A feature to allow emergency contacts to access records in critical situations.

## 🏗 Smart Contract Structure

The contract is built using Solidity and includes the following components:

### 1️⃣ **Patient Registration**

- Patients register with their name and age.
- Their medical records are stored securely in a mapping.

### 2️⃣ **Doctor Registration**

- Doctors register to be authorized on the blockchain.
- Only registered doctors can request access to patient data.

### 3️⃣ **Permission-Based Access Control**

- Patients can approve or revoke access for specific doctors.
- Doctors can update records only if the patient has granted access.

### 4️⃣ **Medical Record Management**

- Authorized doctors can update a patient’s medical history.
- Patients can view records added by different doctors.

## 🚀 Installation & Deployment

### 📌 Prerequisites

- Node.js
- Hardhat (Ethereum development environment)
- MetaMask (for interacting with the smart contract)
- Solidity (for writing the smart contract)

### 📂 Steps to Deploy

1️⃣ Clone the repository:

```bash
git clone https://github.com/your-repo/medical-records-dapp.git
cd medical-records-dapp
```

2️⃣ Install dependencies:

```bash
npm install
```

3️⃣ Compile the smart contract:

```bash
npx hardhat compile
```

4️⃣ Deploy the contract:

```bash
npx hardhat run scripts/deploy.js --network sepolia
```

## 📖 Usage

1️⃣ Patients and doctors register on the platform.

2️⃣ Patients grant access to specific doctors.

3️⃣ Doctors update medical records securely.

4️⃣ Patients view their updated records.

## 📜 License

This project is open-source under the MIT License.

---

**Feel free to contribute and improve this project! 🚀**
