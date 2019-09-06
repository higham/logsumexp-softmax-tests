`logsumexp-softmax-tests` - MATLAB codes for log-sum-exp and softmax tests. 
==========

About
-----

- `chop_test_softmax` is the main m-file that produces the figures for the
manuscript

- `bfloat_chop_test_softmax` is an alterantative that uses bfloat rather than
fp16]

- `lse_basic_high` computes lse and softmax in standard precision using basic
algs.

- `lse_chop` computes lse and softmax usinig chopped arithmetic with unshifted
algorithms.

- `lse_chopshift` computes lse and softmax using chopped arithmetic with shifted
algorithms.

See function headers for full details.

- `chop` and `roundit` are is from [the chop repository](https://github.com/higham/chop).
See there for documentation and possible updated versions.

Requirements
---------

The code was developed in MATLAB R2019a.

Reference
---------

Pierre Blanchard, Desmond J. Higham and Nicholas J. Higham,
Accurate Computation of the Log-Sum-Exp and Softmax Functions.
MIMS Eprint 2019.xx, Manchester Institute for Mathematical
Sciences, The University of Manchester, UK, September 2019.

License
-------

See `license.txt` for licensing information.