import numpy as np
import pandas as pd
from sklearn.linear_model import SGDClassifier
from sklearn.model_selection import train_test_split
from sklearn.pipeline import make_pipeline, make_union
from tpot.builtins import StackingEstimator
from xgboost import XGBClassifier

# NOTE: Make sure that the outcome column is labeled 'target' in the data file
tpot_data = pd.read_csv('PATH/TO/DATA/FILE', sep='COLUMN_SEPARATOR', dtype=np.float64)
features = tpot_data.drop('target', axis=1)
training_features, testing_features, training_target, testing_target = \
            train_test_split(features, tpot_data['target'], random_state=None)

# Average CV score on the training set was: 0.8667895167895168
exported_pipeline = make_pipeline(
    StackingEstimator(estimator=SGDClassifier(alpha=0.01, eta0=0.1, fit_intercept=True, l1_ratio=0.75, learning_rate="constant", loss="log", penalty="elasticnet", power_t=50.0)),
    XGBClassifier(learning_rate=0.5, max_depth=3, min_child_weight=20, n_estimators=100, nthread=1, subsample=0.7000000000000001)
)

exported_pipeline.fit(training_features, training_target)
results = exported_pipeline.predict(testing_features)
