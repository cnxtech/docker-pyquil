# docker-pyquil

Docker image for https://github.com/rigetticomputing/pyquil

# Usage

Sign up for a beta API key to `Forest` from http://www.rigetti.com/forest

```
$ docker run --rm -it -v ~/.pyquil_config:/root/.pyquil_config hinshun/pyquil
Python 2.7.13 (default, Jul 18 2017, 23:48:50)
[GCC 5.3.0] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import pyquil.quil as pq
>>> import pyquil.api as api
>>> from pyquil.gates import *
>>> import numpy as np
>>> qvm = api.SyncConnection()
>>> p = pq.Program()
>>> p.inst(X(0)).measure(0,0)
>>> qvm.run(p, [0,1,2])
[[1, 0, 0]] 
```
