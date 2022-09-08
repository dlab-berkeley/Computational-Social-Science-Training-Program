# Computational-Social-Science-Labs

This repository contains all of the materials for Sociology 273, Computational Social Science Parts A/B. Designed as part of Berkeley's [Computational Social Science Training Program](https://bids.berkeley.edu/research/computational-social-science-training-program#:~:text=The%20UC%20Berkeley%20Computational%20Social,%2C%20social%20welfare%2C%20and%20sociology.) This course is a rigorous, yearlong introduction to computational social science. The target audience is 2nd year and beyond PhD students who have completed their home departments' introductory statistics courses. We cover topics spanning reproducibility and collaboration, machine learning, natural language processing, and causal inference. This course has a strong applied focus with emphasis placed on *doing* computational social science. It makes extensive use of simulations, functional programming, and visualizations to illustrate statistical concepts and demonstrate how "computational social science" is a framework to think about how to analyze big data. By the end of the course, students will be well acquainted with some of the latest research and advanced in computational social science research, and begin working on their own projects.

Most modules contains both a "student" version and a "solutions" version. These are substantially the same, with the difference being that the student versions leave some code lines partially blank for in-class challenges. Each project is designed for groups of 3-4 students who use GitHub to collaborate and version control code. Several popular data science libraries are used frequently including `sklearn`, `numpy`, `pandas`, `spaCy`, `gensim`, `tidyverse`, `tidymodels`, and `SuperLearner`. For the most part the latest versions for any of these libraries should work, with exceptions noted in the notebooks as necessary. 

## Table of Contents

0. [Setup Anaconda Installation](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/Reproducible%20Data%20Science/Anaconda%20Installation%20Guide.ipynb)
1. [Reproducible Data Science and Introduction](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Reproducible%20Data%20Science)
    - a. [Command Line Intro](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/Reproducible%20Data%20Science/Command%20Line%20Intro.md): 
        - Introduction to use a command line interface (CLI) to interact with a computer
        - Basics of navigating file directory, text editing, and running shell/python scripts
    - b. [GitHub Intro](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/Reproducible%20Data%20Science/GitHub%20Intro.md): 
        - Introduction to git, version control, and GitHub.
        - Best practices for using version control to track code changes, collaborate with others without running into conflicts, and using GitHub to showcase portfolio and find open source software/code
    - c. [Statistics Refresher](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/Reproducible%20Data%20Science/Statistics%20Refresher%20Students.ipynb)
    - d. [**Project 1**]: 
        - Use command line and GitHub to create a group repo and practice with version control and branching. 
        - Create a personal website using GitHub Pages.
2. [Fundamentals of Machine Learning](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Fundamentals%20for%20Machine%20Learning)  
    - a. [Math Review](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Fundamentals%20for%20Machine%20Learning/Math%20Review): 
        - Matrix multiplication
        - Derivatives
        - Integrals 
        - numpy/scipy
    - b. [Bias-Variance Tradeoff and Data Splitting](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Fundamentals%20for%20Machine%20Learning/Data%20Splitting%20and%20Bias-Variance%20Tradeoff): 
        - Introduction to train/validation/test splits and cross-validation for machine learning
        - Bias-variance tradeoff
        - Confusion matrices
    - c. [Regression](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Fundamentals%20for%20Machine%20Learning/Regression): 
        - Ordinary Least Squares
        - Regularization via Ridge/LASSO
        - Coefficient plots
        - Hyperparameter tuning
    - d. [**Project 2**](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Project%202): 
        - Predict county-level diabetes rates
        - Exploratory data analysis, data cleaning and preparation, hyperparameter tuning, feature selection, model validation
3. [Supervised Machine Learning](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Supervised%20Machine%20Learning)
    - a. [Classification](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Supervised%20Machine%20Learning/Classification): 
        - Imbalanced class labels
        - Logistic regression, decision tree classifier, support vector machine
        - Hyperparameter tuning 
        - Metrics (accuracy, recall, precision, AUC-ROC)
    - b. [Trees and Ensembles](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Supervised%20Machine%20Learning/Trees%20and%20Ensembles): 
        - Decision tree, random forest, adaboost
        - Variable importance plot
    - c. [Neural Networks](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Supervised%20Machine%20Learning/Neural%20Networks): 
        - Multi-layer perceptron
        - keras tensorflow
        - Convolutional neural network
    - d. [**Project 3**:](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Project%203): 
        - Predict health code violations in Chicago restaurants. 
        - Data preprocessing, classification models, interpretable and explainable machine learning, prediction policy problems
4. [Unsupervised Machine Learning and AutoML](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Unsupervised%20Machine%20Learning%20and%20TPOT): 
    - a. [Clustering and PCA](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Unsupervised%20Machine%20Learning%20and%20TPOT/Clustering%20and%20PCA): 
        - Principal components analysis
        - Clustering (k-means, spectral, etc.)
        - Unsupervised learning outputs as inputs to supervised learning
    - b. [TPOT](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Unsupervised%20Machine%20Learning%20and%20TPOT/TPOT): 
        - TPOT genetic programming to automatically search for machine learning pipeline for preprocessing, unsupervised learning, and classification/regression 
    - c. [**Project 4**](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Project%204): 
        - Unsupervised learning and neural network classification on National Health and Nutrition Examination Survey (NHANES)
        - Difference between dimensionality reduction and clustering
        - Combining dimensionality reduction and clustering
        - Deep learning with one hidden layer 
5. [Natural Language Processing](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Natural%20Language%20Processing)
    - a. [Text Preprocessing](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Natural%20Language%20Processing/Text%20Preprocessing): 
        - Tokenization
        - Stop words
        - Entity recognition
        - Lemmatization 
        - Bag of words/term frequency-inverse document frequency
        - Naive Bayes 
        - spaCy
    - b. [Exploratory Data Analysis and Unsupervised Methods](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Natural%20Language%20Processing/Exploratory%20and%20Unsupervised%20Methods): 
        - Word clouds
        - Sentiment polarity
        - Topic modeling
    - c. [Text Feature Engineering and Classification](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Natural%20Language%20Processing/Text%20Feature%20Engineering%20and%20Classification): 
        - N-grams
        - Word counts
        - Topic model proportions as input to classification
        - Combining text and non-text features
    - d. [word2vec](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/Natural%20Language%20Processing/word2vec/word2vec.ipynb): 
        - Word embeddings
        - t-SNE
        - doc2vec
        - Document average word embeddings
        - Pre-trained embeddings using gensim
    - e. [**Project 5**](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Project%205): 
        - Investigate asymmetric polarization and moderation/extremism in U.S. Congress tweets. 
        - Text preprocessing, exploratory data analysis, text feature engineering, classification
6. [Causal Inference](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Causal%20Inference)
    - a. [R Refresher](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Causal%20Inference/R%20Refresher): 
        - Introduction to R
        - Dplyr, tidyr, ggplot, purrr
    - b. [Randomized Experiments](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Causal%20Inference/Randomized%20Experiments): 
        - Average Treatment Effect (ATE)
        - Individual-level Treatment Effect (ITE)
        - Average Treatment Effect on the Treated (ATT)
        - Heterogenous Treatment Effects
        - Randomization Designs (completely, cluster, block)
        - Statistical tests of difference
    - c. [Matching](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Causal%20Inference/Matching%20Methods): 
        - Propensity score matching
        - Full/optimal/greedy matching
        - Mahalanobis distance
        - Double robust estimators
    - d. [**Project 6**](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Project%206): 
        - Replicate studies examining effect of college attendance on political participation. 
        - Preprocessing, matching after randomized study to improve covariate balance, simulations to examine different matching configurations effect on ATE estimates
    - e. [Regression Discontinuity](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Causal%20Inference/Regression%20DIscontinuity): 
        - Regression discontinuity
        - Running variable
        - McCrary density test
        - Sharp discontinuity
        - Bandwidth selection via Imbens-Kalyanaraman and cross-validation
    - f. [Instrumental Variables](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/Causal%20Inference/Instrumental%20Variables/Instrumental-Variables-Solutions.pdf): 
        - Directed Acyclic Graphs (DAGs)
        - Exclusion restriction
        - Colliders
        - Two-Stage Least Squares (2SLS)
    - g. [Diff-in-Diffs and Synthetic Control](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Causal%20Inference/Diff%20in%20Diffs%20and%20Synthetic%20Control): 
        - Difference-in-differences method
        - Parallel trends assumption
        - Synthetic control 
        - Augmented synthetic control with Ridge regularization
        - Staggered adoption synthetic control
    - h. [**Project 7**](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Project%207): 
        - Diff-in-diffs and synthetic control to analyze the effect of Affordable Care Act (ACA) Medicaid expansion among adoptees over time.
    - i. [Sensitivity Analysis](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Causal%20Inference/Sensitivity%20Analysis): 
        - Manski bounds
        - Rosenbaum sensitivity analysis
        - E-values
    - j. [SuperLearner and Longitudinal Targeted Maximum Likelihood Estimation (LTMLE)](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Causal%20Inference/SuperLearner%20and%20LTMLE): 
        - Ensemble machine learning for causal inference
        - Parallelization in R
        - Targeted learning
        - Double robust estimators
        - Time-dependent confounding
    - k. [**Project 8**](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/tree/master/Project%208): 
        - Effect of blood pressure medication on heart disease using SuperLearner, TMLE, and LTMLE.
