# MLP Architecture Experiments

This repository includes complete Python implementations and analysis of multilayer perceptron (MLP) experiments conducted as part of the **Neural Networks graduate course** at *K. N. Toosi University of Technology*. The codebase is modular, organized by task, and structured for reuse and evaluation on a variety of datasets and activation functions.

---

## 🧩 Assignment Breakdown

- **Q1 – Time-Series Regression with LM**  
  Training MLP with Levenberg–Marquardt on ECG, Lorenz, TSE, and Temperature data

- **Q2 – Classification with Activation Functions**  
  Testing various activations on datasets like iris, seeds, diabetic

- **Q3 – Optimizer Comparison**  
  Comparison of Adam, LM, Momentum on identical tasks

- **Q4 – Flexible Activation Functions**  
  Custom blended functions using tunable coefficients across layers (F1 & F2)

---
 
## 🧪 Key Experiments and Findings

### ✅ Regression Results
Each model was evaluated using Mean Squared Error (MSE) on train/test splits (70/30). The Levenberg-Marquardt method showed good performance across all datasets. For example:
- With `tansig` activation, **lowest MSE** was obtained on `ECG` dataset.
- Adaptive methods like Adam showed **higher variance** but occasionally better convergence with proper tuning.

### ✅ Classification Results
- On `iris`, `seeds`, and `diabetic`, Levenberg-Marquardt with one-hot output and `tansig/logsig` activations achieved up to **82.2% test accuracy**.
- Momentum optimizer paired with `softmax + cross-entropy` loss showed **faster convergence** and **better stability** on small datasets.

### ✅ Flexible Activation Layers
Two variants were tested:
- **F1(x):** All neurons use the blended function α·logsig + β·tansig + γ·ReLU + δ·pureline
- **F2(x):** Only hidden layers use the blend; output uses `pureline`
> Findings: F1 provided better fitting capacity on regression tasks, especially for nonlinear patterns in Lorenz data.

---

## 🔍 Highlights of Implementation

- MLPs are built and trained without using any ML libraries like PyTorch or Keras
- Each question handles its own input/output logic but reuses a central set of utility functions
- Flexible blend of nonlinearities in Q4 (controlled via `alpha`, `beta`, etc.)
- Architectures vary from 2 to 4 layers with bias/no-bias configurations
- Activation behavior, convergence, and MSE/accuracy are plotted for comparative analysis

---

## 🗂️ Folder Structure

```
mlp-architecture-experiments/
├── Q1/              ← Levenberg-Marquardt regression
├── Q2/              ← Gradient descent & Momentum with various activations
├── Q3/              ← Comparison: Momentum vs Levenberg vs Adam
├── Q4/              ← Flexible Activation Functions (F1, F2)
├── Report_Q1_Q2.xlsx ← Metrics and training logs for regression & classification
├── Report_Q3_Q4.xlsx ← Comparative performance of optimizers and blended activation tests
```
 
## ⚠️ Notes

- All experiments are reproducible via `main.py` files in each subfolder
- Outputs include `.csv` logs, `.png` plots, and summarized `.xlsx` reports
- Properly separated code for modeling, evaluation, plotting, and experimentation
