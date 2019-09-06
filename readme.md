`logsumexp-softmax-tests` - MATLAB codes for log-sum-exp and softmax tests. 
==========

About
-----

These are MATLAB program files used to genereate the test results in the
reference below.

- `chop_test_softmax` is the main m-file that produces the figures for the
manuscript.

- `bfloat_chop_test_softmax` is an alterantative that uses bfloat rather than
fp16.

- `lse_basic_high` computes lse and softmax in standard precision using the
basic algorithms.

- `lse_chop` computes lse and softmax usinig chopped arithmetic with the
unshifted algorithms.

- `lse_chopshift` computes lse and softmax using chopped arithmetic with
the shifted algorithms.

- `data_presoftmax.mat` holds the test data.

See function headers for full details.

- Functions `chop` and `roundit` are copied from the [chop
repository](https://github.com/higham/chop).  See there for documentation
and possible updated versions.

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