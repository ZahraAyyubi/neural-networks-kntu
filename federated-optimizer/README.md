# Federated Optimizer Comparison – Final Neural Networks Project (Fall 2023)

This repository contains the full implementation, dataset preparation, and evaluation results of a **federated learning framework** that tests and compares the performance of multiple optimization algorithms. It was developed as the **final project** for the *Neural Networks course at K. N. Toosi University of Technology*.
This code is implementation of this paper **Optimization in Federated Learning**

> All training logic, optimizers, communication logic, data handling, and plotting are implemented from scratch using **Python and NumPy**, without any deep learning frameworks.

---

## 🧠 Project Objective

We simulate a federated learning environment where a server and 10 clients collaboratively train a shared MLP model on distributed **Fashion-MNIST** data. The project evaluates the impact of five different optimizers on global model performance:

- FedSGD
- FedSGD + Nesterov Momentum
- FedSGD + AdaGrad
- FedSGD + RMSProp
- FedSGD + Adam

Each optimizer is tested across two data distribution modes:

- **Full Non-IID**: each client sees data from only one label class
- **99%-Non-IID**: 99% class-specific data, 1% random for all clients

---

## 📊 Dataset

- **Fashion-MNIST** (Zalando) with 60,000 training and 10,000 test samples
- Combined and downsampled to 35,000 total samples due to compute limits
- Normalized and preprocessed using a custom shifting/scaling strategy
- Stored locally in `.xlsx` files per client for each distribution mode

---

## 🧱 Architecture & Training Flow

- **Server:**
  - Initializes model weights randomly
  - Coordinates 30 rounds of federated training
  - Aggregates updates using weighted averaging
  - Evaluates and logs global accuracy per round

- **Clients (10):**
  - Each runs as a separate process with its own dataset
  - Trains a simple MLP with 1 hidden layer (784 → 128 → 10)
  - Uses `ReLU` in hidden and `softmax` in output with `cross-entropy` loss
  - Receives config (optimizer, hyperparams, rounds) from server
  - Trains model locally and sends updated weights back

---

## 🧪 Evaluated Optimizers

Each optimizer has a dedicated implementation:

| Optimizer | Features |
|----------|----------|
| FedSGD | Standard minibatch gradient descent |
| FedSGD + Momentum | Includes velocity term to accelerate convergence |
| FedSGD + Nesterov | Projects ahead using previous velocity before gradient |
| FedSGD + AdaGrad | Adapts learning rate based on past squared gradients |
| FedSGD + RMSProp | Uses exponential decay of past squared gradients |
| FedSGD + Adam | Combines momentum and adaptive learning rate (best for IID) |

---

## 📂 Folder Structure

```
federated-optimizer/
├── server.py                         ← Federated server logic
├── clientX.py                        ← Generic client implementation
├── generate_client_datasets.py       ← Data generation script  
├── optimization_params.json          ← Hyperparameter configs for all optimizers 
```

---

## 📊 How To Run?

1) run generate_client_datasets script to generate client data-sets
2) config optimizer and other params then run server 
3) run each client
 
---

## 📈 Results Summary

- **Best overall performance**: FedSGD with Momentum and Nesterov
- **AdaGrad**: fast convergence in 99% non-IID, but struggles with full non-IID
- **Adam**: stable in moderate settings, but underperforms in highly non-IID setups
- **RMSProp**: promising learning curves, but plateaus early
- Training accuracy and test MSE tracked across all optimizers and hyperparameter configs
 

---

## 📘 Reference

The implementation is based on the experimental setup in this paper:  
**"Optimization in Federated Learning"**  
https://www.academia.edu/download/85265199/paper13.pdf

--- 
