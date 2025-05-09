# Federated Learning on MNIST with Momentum Optimizer

This project implements a complete simulation of **federated learning** over the MNIST dataset, using a custom-built federated architecture in Python. It was developed for the final question of the **Neural Networks course at K. N. Toosi University of Technology**.

Each component (client/server) was coded from scratch using **Python, NumPy, Pandas, and Socket programming**, without external ML libraries. All training is done locally on clients, and models are aggregated on the server in a secure and privacy-aware setup.

---

## 🧠 Problem Statement

Simulate federated learning using the classic MNIST dataset. Four independent clients each train a local neural network on separate subsets of the dataset. A central server coordinates the learning process by distributing initial model weights and aggregating the clients' updates over several training rounds.

Key requirements:

- Clients must not share raw data with the server or each other
- Each client is initialized with the same model structure and receives global weights at each round
- A weighted average of client updates (based on number of samples) is used to form the global model
- Model training uses **Momentum optimizer** and **softmax + cross-entropy** loss

---

## ⚙️ Architecture Overview

- **4 clients**, each with a different local dataset (split from MNIST CSV)
- **Server**: aggregates model weights and redistributes updated global model
- **Communication**: TCP socket protocol over dedicated ports
- **Training Rounds**: 10 global rounds, each client trains for 50 epochs locally
- **Neural Network Model**:
  - Input layer: 784 neurons
  - Hidden layers: 20 + 15 neurons with `leaky_relu`
  - Output layer: 10 neurons with `softmax`
- **Loss**: cross-entropy with one-hot labels
- **Dataset**: 60,000 train + 10,000 test samples, partitioned as:
  - Client 1: 1000 samples
  - Client 2: 3000 samples
  - Client 3: 2000 samples
  - Client 4: 4000 samples

---

## 🗂️ Folder Structure

```
federated-mnist-momentum/
├── client1.py                ← Code for first client (1000 samples)
├── client2.py                ← Code for second client (3000 samples)
├── client3.py                ← Code for third client (2000 samples)
├── client4.py                ← Code for fourth client (4000 samples)
├── server.py                 ← Code for central server
├── mnist_train.csv           ← Full MNIST training dataset (CSV format)
├── mnist_test.csv            ← Full MNIST test set
```

---

## 📊 Results

- Accuracy improved across rounds without any centralized data sharing
- Global model converged progressively via round-based training
- Test performance evaluated separately on each client
- All logs and metrics saved in Excel file

---

## 🧰 Technologies Used

- Python (sockets, threading, pandas, numpy)
- No ML frameworks used (e.g., no TensorFlow, Keras, PyTorch)
- Communication via socket programming to simulate parallelism
- All code modularized for easy scaling to more clients
