# Computational-Social-Science-Labs

This repo contains all of the materials for Sociology 273, Computational Social Science Parts A/B. Designed as part of Berkeley's [Computational Social Science Training Program](https://bids.berkeley.edu/research/computational-social-science-training-program#:~:text=The%20UC%20Berkeley%20Computational%20Social,%2C%20social%20welfare%2C%20and%20sociology.) This course is a rigorous, yearlong introduction to computational social science. The target audience is 2nd year and beyond PhD students who have completed their home departments' introductory statistics courses. We cover topics spanning reproducibility and collaboration, machine learning, natural language processing, and causal inference. This course has a strong applied focus with emphasis placed on *doing* computational social science. It makes extensive use of simulations, functional programming, and visualizations to illustrate statistical concepts and demonstrate how "computational social science" is a framework to think about how to analyze big data. By the end of the course, students will be well acquainted with some of the latest research and advanced in computational social science research, and begin working on their own projects.

Most modules contains both a "student" version and a "solutions" version. These are substantially the same, with the difference being that the student versions leave some code lines partially blank for in-class challenges. Each project is designed for groups of 3-4 students who use GitHub to collaborate and version control code. Several popular data science libraries are used frequently including `sklearn`, `numpy`, `pandas`, `spaCy`, `gensim`, `tidyverse`, `tidymodels`, and `SuperLearner`. For the most part the latest versions for any of these libraries should work, with exceptions noted in the notebooks as necessary. 

If you cannot get materials to work locally, you may use DataHub. This allows you to run the materials in an instance on UC Berkeley's servers. No installation is needed from your end - you only need an internet browser and a CalNet ID to log in. By using the DataHub, you can save your work and come back to it at any time. *Note: Some users may have to click the link twice if the materials do not load initially.*

[![D-Lab DataHub](https://img.shields.io/badge/launch-D--Lab%20datahub-blue)](https://dlab.datahub.berkeley.edu/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2Fdlab-berkeley%2FComputational-Social-Science-Training-Program&urlpath=lab%2Ftree%2FComputational-Social-Science-Training-Program%2F)

## Table of Contents

0. [Setup Anaconda Installation](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/Reproducible%20Data%20Science/Anaconda%20Installation%20Guide.ipynb)
1. [Installation and Reproducible Data Science](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/1%20Installation%20and%20Reproducible%20Data%20Science)
    - 1-1 [Anaconda Installation](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/1%20Installation%20and%20Reproducible%20Data%20Science/1-1%20Anaconda%20Installation.ipynb)
    - 1-2 [Command Line Intro](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/1%20Installation%20and%20Reproducible%20Data%20Science/1-2%20Command%20Line%20Intro.md): 
        - Introduction to use a command line interface (CLI) to interact with a computer
        - Basics of navigating file directory, text editing, and running shell/python scripts
    - 1-3 [GitHub Intro](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/1%20Installation%20and%20Reproducible%20Data%20Science/1-3%20GitHub%20Intro.md): 
        - Introduction to git, version control, and GitHub.
        - Best practices for using version control to track code changes, collaborate with others without running into conflicts, and using GitHub to showcase portfolio and find open source software/code
    - 1-4 [Statistics Refresher](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/1%20Installation%20and%20Reproducible%20Data%20Science/1-4%20Statistics%20Refresher%20%5BStudents%5D.ipynb)
    - [**Project 1**]: 
        - Use command line and GitHub to create a group repo and practice with version control and branching. 
        - Create a personal website using GitHub Pages.
2. [Introduction to Machine Learning](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/2%20Introduction%20to%20Machine%20Learning)  
    - 2-1 [Math Review](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/2%20Introduction%20to%20Machine%20Learning/2-1%20Math%20Review): 
        - Matrix multiplication
        - Derivatives
        - Integrals 
        - numpy/scipy
    - 2-2 [Data Splitting and Bias-Variance Tradeoff](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/2%20Introduction%20to%20Machine%20Learning/2-2%20Data%20Splitting%20and%20Bias-Variance%20Tradeoff): 
        - Introduction to train/validation/test splits and cross-validation for machine learning
        - Bias-variance tradeoff
        - Confusion matrices
    - 2-3 [Regression](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/2%20Introduction%20to%20Machine%20Learning/2-3%20Regression): 
        - Ordinary Least Squares
        - Regularization via Ridge/LASSO
        - Coefficient plots
        - Hyperparameter tuning
    - [**Project 2**](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Projects/Project%202): 
        - Predict county-level diabetes rates
        - Exploratory data analysis, data cleaning and preparation, hyperparameter tuning, feature selection, model validation
3. [Supervised Machine Learning](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/3%20Supervised%20Machine%20Learning)
    - 3-1 [Classification](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/3%20Supervised%20Machine%20Learning/3-1%20Classification): 
        - Imbalanced class labels
        - Logistic regression, decision tree classifier, support vector machine
        - Hyperparameter tuning 
        - Metrics (accuracy, recall, precision, AUC-ROC)
    - 3-2 [Trees and Ensembles](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/3%20Supervised%20Machine%20Learning/3-2%20Trees%20and%20Ensembles): 
        - Decision tree, random forest, adaboost
        - Variable importance plot
    - 3-3 [Neural Networks](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/3%20Supervised%20Machine%20Learning/3-3%20Neural%20Networks): 
        - Multi-layer perceptron
        - keras tensorflow
        - Convolutional neural network
    - [**Project 3**:](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Projects/Project%203): 
        - Predict health code violations in Chicago restaurants. 
        - Data preprocessing, classification models, interpretable and explainable machine learning, prediction policy problems
4. [Unsupervised Machine Learning and TPOT](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/4%20Unsupervised%20Machine%20Learning%20and%20TPOT): 
    - 4-1 [Clustering and PCA](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/4%20Unsupervised%20Machine%20Learning%20and%20TPOT/4-1%20Clustering%20and%20PCA): 
        - Principal components analysis
        - Clustering (k-means, spectral, etc.)
        - Unsupervised learning outputs as inputs to supervised learning
    - 4-2 [TPOT](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/4%20Unsupervised%20Machine%20Learning%20and%20TPOT/4-2%20TPOT): 
        - TPOT genetic programming to automatically search for machine learning pipeline for preprocessing, unsupervised learning, and classification/regression 
    - [**Project 4**](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Projects/Project%204): 
        - Unsupervised learning and neural network classification on National Health and Nutrition Examination Survey (NHANES)
        - Difference between dimensionality reduction and clustering
        - Combining dimensionality reduction and clustering
        - Deep learning with one hidden layer 
5. [Natural Language Processing](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/5%20Natural%20Language%20Processing)
    - 5-1 [Text Preprocessing](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/5%20Natural%20Language%20Processing/5-1%20Text%20Preprocessing): 
        - Tokenization
        - Stop words
        - Entity recognition
        - Lemmatization 
        - Bag of words/term frequency-inverse document frequency
        - Naive Bayes 
        - spaCy
    - 5-2 [Exploratory Data Analysis and Unsupervised Methods](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/5%20Natural%20Language%20Processing/5-2%20Exploratory%20and%20Unsupervised%20Methods): 
        - Word clouds
        - Sentiment polarity
        - Topic modeling
    - 5-3 [Text Feature Engineering and Classification](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/5%20Natural%20Language%20Processing/5-3%20Text%20Feature%20Engineering%20and%20Classification): 
        - N-grams
        - Word counts
        - Topic model proportions as input to classification
        - Combining text and non-text features
    - 5-4 [word2vec](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/5%20Natural%20Language%20Processing/5-4%20word2vec): 
        - Word embeddings
        - t-SNE
        - doc2vec
        - Document average word embeddings
        - Pre-trained embeddings using gensim
    - 5-5 [Neural Nets for NLP](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/5%20Natural%20Language%20Processing/5-5%20Neural%20Nets%20for%20NLP)    
    - [**Project 5**](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Projects/Project%205): 
        - Investigate asymmetric polarization and moderation/extremism in U.S. Congress tweets. 
        - Text preprocessing, exploratory data analysis, text feature engineering, classification
6. [Causal Inference](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/6%20Causal%20Inference)
    - 6-1 [R Refresher](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/6%20Causal%20Inference/6-1%20R%20Refresher): 
        - Introduction to R
        - Dplyr, tidyr, ggplot, purrr
    - 6-2 [Randomized Experiments](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/6%20Causal%20Inference/6-2%20Randomized%20Experiments): 
        - Average Treatment Effect (ATE)
        - Individual-level Treatment Effect (ITE)
        - Average Treatment Effect on the Treated (ATT)
        - Heterogenous Treatment Effects
        - Randomization Designs (completely, cluster, block)
        - Statistical tests of difference
    - 6-3 [Matching Methods](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/6%20Causal%20Inference/6-3%20Matching%20Methods): 
        - Propensity score matching
        - Full/optimal/greedy matching
        - Mahalanobis distance
        - Double robust estimators
    - [**Project 6**](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Projects/Project%206): 
        - Replicate studies examining effect of college attendance on political participation. 
        - Preprocessing, matching after randomized study to improve covariate balance, simulations to examine different matching configurations effect on ATE estimates
    - 6-4 [Regression Discontinuity](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/6%20Causal%20Inference/6-4%20Regression%20Discontinuity): 
        - Regression discontinuity
        - Running variable
        - McCrary density test
        - Sharp discontinuity
        - Bandwidth selection via Imbens-Kalyanaraman and cross-validation
    - 6-5 [Instrumental Variables](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/6%20Causal%20Inference/6-5%20Instrumental%20Variables): 
        - Directed Acyclic Graphs (DAGs)
        - Exclusion restriction
        - Colliders
        - Two-Stage Least Squares (2SLS)
    - 6-6 [Diff-in-Diffs and Synthetic Control](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/6%20Causal%20Inference/6-6%20Diff%20in%20Diffs%20and%20Synthetic%20Control): 
        - Difference-in-differences method
        - Parallel trends assumption
        - Synthetic control 
        - Augmented synthetic control with Ridge regularization
        - Staggered adoption synthetic control
    - [**Project 7**](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Projects/Project%207): 
        - Diff-in-diffs and synthetic control to analyze the effect of Affordable Care Act (ACA) Medicaid expansion among adoptees over time.
    - 6-7 [Sensitivity Analysis](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/6%20Causal%20Inference/6-7%20Sensitivity%20Analysis): 
        - Manski bounds
        - Rosenbaum sensitivity analysis
        - E-values
    - 6-8 [SuperLearner and Longitudinal Targeted Maximum Likelihood Estimation (LTMLE)](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/6%20Causal%20Inference/6-8%20SuperLearner%20and%20LTMLE): 
        - Ensemble machine learning for causal inference
        - Parallelization in R
        - Targeted learning
        - Double robust estimators
        - Time-dependent confounding
    - [**Project 8**](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Projects/Project%208): 
        - Effect of blood pressure medication on heart disease using SuperLearner, TMLE, and LTMLE.
