# fajsm - Fast and Accurate Joint Species distribution Modeling 

## Install instructions
```{python}
pip install fajsm_py
```

## Example
At the moment, we do not provide specifically a API for jSDM Models. However, it's just a deep multivariate probit model with one layer. Here's an example:

```{python}
import fajsm_py as fa
import numpy as np
Env = np.random.randn(100, 5)
Occ = np.random.binomial(1, 0.5, [100, 10])

model = fa.Model_base(5) # input_shape == number of environmental predictors
model.add_layer(fa.layers.Layer_dense(hidden=10)) # number of hidden units in the layer == number of species
model.build(df=5, fa.optimizer_adamax(0.1, weights_decay = 0.01)) # df = degree of freedom 
model.fit(X = Env, Y = Occ)
print(model.get_weights_numpy())
print(model.get_cov())
```

* For species intercept, use 'bias=True' in 'Layer_dense(...)'. 
* We recommend to set df = number of species / 2. 