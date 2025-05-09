# Gradient Descent Optimizers – Neural Networks Course (Fall 2023)

This project was developed as part of the **Neural Networks course** at *K. N. Toosi University of Technology*. It includes:

- **Ex1:** Manual implementation and comparison of classical optimizers
- **Ex2:** Literature-based improvement using AdamX (variant of AMSGrad)

All algorithms were written from scratch in Python using only NumPy and Matplotlib.

---

## 📌 Assignment Summary

### 🔵 Ex1 – Optimizer Implementation and Comparison

Implement the following optimizers on simple regression tasks (`y = wx + b`, `y = ax² + bx + c`):
- SGD, Momentum, Nesterov, AdaGrad, RMSProp, Adadelta, Adam, Adamax, Nadam, AMSGrad

Evaluate each method’s convergence behavior using MSE and analyze sensitivity to hyperparameters like `α` (learning rate), `β` (momentum), and `ε`.

### 🟢 Ex2 – Research-Based Extension

Reproduce and analyze the **AdamX** algorithm from the paper:  
*"On the Convergence Proof of AMSGrad and a New Version"*

Key improvement: introducing a **time-varying momentum parameter β(t)** to improve theoretical guarantees and convergence.

AdamX was tested on the same tasks and compared with AMSGrad using MSE and stability analysis.

---

## 🧪 Key Insights from the Report

- **AdamX consistently outperformed AMSGrad** in both linear and quadratic regression (lower final MSE).
- **Adam**, **Nadam**, and **AMSGrad** also showed strong and stable performance.
- **AdaGrad** suffered from fast learning rate decay, leading to slow or stalled convergence.
- **SGD, Momentum, and Nesterov** required careful tuning and were sensitive to high or low learning rates.
- Hyperparameter tuning significantly influenced optimizer success:
  - Low α → slow convergence
  - High α → oscillation or divergence
  - β and ε also had nontrivial impact

---

## 📊 Optimizer Comparison Table

| Optimizer | Advantages | Disadvantages |
|-----------|------------|----------------|
| **SGD** | Simple, fast updates | Sensitive to learning rate, slow convergence |
| **Momentum** | Faster than SGD, smooths updates | Requires careful tuning of β |
| **Nesterov** | Anticipates gradient direction | More sensitive to overshooting |
| **AdaGrad** | Adapts learning rate per parameter | Learning rate decay too aggressive |
| **RMSProp** | Controls learning rate decay | Convergence sometimes unstable |
| **Adadelta** | Improves AdaGrad, no need to manually set learning rate | Slower on sparse data |
| **Adam** | Combines momentum + adaptivity, widely effective | Can overfit, sensitive to ε |
| **Adamax** | Stable on high-dimensional data | Slower than Adam in some tasks |
| **Nadam** | Combines Nesterov + Adam, good stability | Slightly slower than Adam |
| **AMSGrad** | Fixes convergence issue in Adam | Slightly slower update, more conservative |
| **AdamX** | Time-varying β improves stability & convergence | Slightly more complex to implement |

---

## 📁 Folder Structure

```
gradient-descent-optimizers/
├── Ex1/                            ← Optimizer implementations
│   ├── ax+b/                       ← Linear regression (y = wx + b)
│   └── ax2+bx+c/                   ← Quadratic regression (y = ax² + bx + c)
├── Ex2/                            ← Literature-based enhancement
│   ├── ex2_ax+b.ipynb              ← AdamX vs AMSGrad (linear)
│   ├── ex2_ax2+bx+c.ipynb          ← AdamX vs AMSGrad (quadratic)
│   └── AdamX.pdf                   ← Paper used for reference
└── README.md                       ← This file
```

---

## ⚠️ Notes

- No ML frameworks like TensorFlow or PyTorch were used.
- All optimizers implemented manually for educational purposes.
- MSE, parameter tuning, and plot analysis provided in report.
