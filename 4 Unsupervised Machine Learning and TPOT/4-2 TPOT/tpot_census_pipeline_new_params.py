import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from xgboost import XGBClassifier

# NOTE: Make sure that the outcome column is labeled 'target' in the data file
tpot_data = pd.read_csv('PATH/TO/DATA/FILE', sep='COLUMN_SEPARATOR', dtype=np.float64)
features = tpot_data.drop('target', axis=1)
training_features, testing_features, training_target, testing_target = \
            train_test_split(features, tpot_data['target'], random_state=3)

# Average CV score on the training set was: 0.7125312155588841
exported_pipeline = XGBClassifier(learning_rate=0.1, max_depth=6, min_child_weight=2, n_estimators=100, n_jobs=1, subsample=0.75, verbosity=0)
# Fix random state in exported estimator
if hasattr(exported_pipeline, 'random_state'):
    setattr(exported_pipeline, 'random_state', 3)

exported_pipeline.fit(training_features, training_target)
results = exported_pipeline.predict(testing_features)
