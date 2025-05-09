# Neural Networks Course Projects – KNTU(Fall 2023)

This repository includes a set of practical assignments and a final project completed for the **Neural Networks course** at *K. N. Toosi University of Technology*, held in Fall 2023.

All implementations were written from scratch in Python without relying on high-level machine learning libraries such as Keras or PyTorch. The projects emphasize a deep understanding of neural network architectures, activation functions, optimization techniques, and federated learning. 

---

## 📚 Repository Structure

### 📁 `gradient-descent-optimizers/`
A comparison of classic and modern gradient descent methods:
- Includes: SGD, Momentum, Nesterov, AdaGrad, RMSProp, Adam
- Applied to regression tasks on synthetic functions
- Implements loss tracking and learning curve analysis

### 📁 `mlp-architecture-experiments/`
MLP implementation and experimentation on different tasks:
- Optimized using the Levenberg–Marquardt algorithm
- Evaluation across multiple activation functions: ReLU, Tanh, LogSig, LeakyReLU, hybrids
- Used for time-series prediction (ECG, Lorenz, TSE) and classification (Iris, Wine, Glass)

### 📁 `gmdh-neural-architectures/`
Design and comparison of two GMDH-based neural models:
- GMDH-RBF and GMDH-RoughMLP hybrid
- Tested on time-series regression problems
- Focus on self-organizing architecture and interpretability

### 📁 `federated-optimizer/`
Final course project reproducing results from this paper:  
**"Optimization in Federated Learning"** (Felbab et al., 2019)
- Federated SGD, Momentum, AdaGrad, RMSProp, and Adam
- Simulated on Fashion-MNIST under 99%-non-IID and full-non-IID conditions
- Modular federated learning setup with local training, aggregation, and reporting

---

## 🔬 Skills Demonstrated

- Manual implementation of feed-forward networks and backpropagation
- Development of custom optimizers and policy schedulers
- Time-series forecasting and multi-class classification
- Exploration of GMDH-based evolutionary modeling
- Simulation of federated learning systems and optimizer benchmarking

---

## ⚠️ Notes

- No deep learning libraries (Keras, TensorFlow, PyTorch) were used.
- All projects were developed for academic evaluation and understanding.
- Each project folder includes a dedicated `README.md` with task-specific documentation.
