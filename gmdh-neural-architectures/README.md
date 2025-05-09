# GMDH-Based Neural Architectures  

This repository includes the complete implementation and evaluation of neural network architectures based on GMDH (Group Method of Data Handling), developed as part of the **Neural Networks graduate course** at *K. N. Toosi University of Technology*. All implementations are done from scratch using **Python** and **NumPy**, without any deep learning libraries.

---

## 📌 Assignment Breakdown

### 🔹 Question 1 – GMDH + RBF Network

- **Goal:** Build a neural network with a GMDH-based input layer followed by a trainable RBF (Radial Basis Function) layer.
- **Datasets:** Video Surveillance, ECG, Tehran Stock Exchange, Lorenz, Temperature
- **Architecture:**
  - GMDH neurons constructed pairwise from features
  - Top-performing neurons (based on validation MSE) selected as transfer to next layer
  - Second layer is RBF, trained using backpropagation
- **Evaluation:** MSE, regression plots, training/test errors per epoch
- **Mathematical derivations:** Forward pass, backpropagation, RBF parameter updates (weights, centers, sigmas)

---

### 🔹 Question 2 – GMDH + Rough MLP

- **Goal:** Use the same GMDH selection as Q1, but pass the transformed features into a rough MLP structure with custom nonlinearities.
- **Architecture:**
  - 2-layer MLP with hidden and output layers using `logsig`, `tansig`, `relu`, `leaky_relu`
  - Optimizer: **Gradient Descent with Momentum**
  - Output: train/test accuracy, loss curves, regression evaluation
- **Highlight:** Feature transformation using selected GMDH neurons improves convergence
 
---

## 📁 Folder Structure

```
gmdh-neural-architectures/
├── Q1/                  ← First model with GMDH + RBF layer
├── Q2/                  ← Rough MLP model with GMDH input  
```

---

## ⚙️ Highlights of Implementation

- ✅ **No external ML libraries used** – everything implemented from scratch
- 📉 **MSE tracking** – for every dataset and every round (Q1, Q2) 
---

## 🧪 Technologies

- Python 3, NumPy, socket, pandas
- No use of TensorFlow, PyTorch, Keras, or scikit-learn
- Fully manual gradient calculation, GMDH neuron definition, and RBF/MLP training

---
 
