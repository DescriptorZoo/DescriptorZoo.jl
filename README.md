![CI](https://github.com/DescriptorZoo/DescriptorZoo.jl/workflows/CI/badge.svg)

# DescriptorZoo.jl

DescriptorZoo Julia Package to provide single interface for supported descriptors and registry.

## Dependencies:

Julia packages:
- [JuLIP.jl](https://github.com/JuliaMolSim/JuLIP.jl)
- [PyCall.jl](https://github.com/JuliaPy/PyCall.jl)
- [ASE.jl](https://github.com/JuliaMolSim/ASE.jl)

Dependent and supported descriptor codes:
- [ACE.jl](https://github.com/ACEsuit/ACE.jl) Atom Cluster Expansion
- [ACSF.jl](https://github.com/DescriptorZoo/ACSF.jl.git) Atom Centred Symmetry Functions
- [CHSF.jl](https://github.com/DescriptorZoo/CHSF.jl.git) Chebyshev Polynomial variant of Atom Centred Symmetry Functions
- [QUIP.jl](https://github.com/DescriptorZoo/QUIP.jl.git) SOAP descriptor
- [AMP.jl](https://github.com/DescriptorZoo/AMP.jl.git) Atom Centred Symmetry Functions
- [SOAPlite.jl](https://github.com/DescriptorZoo/SOAPlite.jl.git) SOAPlite descriptor
- [DScribe.jl](https://github.com/DescriptorZoo/DScribe.jl.git) SOAP variants, MBTR and ACSF descriptors
- [MBTR.jl](https://github.com/DescriptorZoo/MBTR.jl.git) Many-Body Tensor Representation

Underlying Python codes for descriptors:
- [QUIPPY, QUIP and GAP](https://libatoms.github.io/GAP/installation.html)
- [QMMLpack](https://gitlab.com/qmml/qmmlpack)
- [SOAPlite](https://github.com/SINGROUP/SOAPLite)
- [DScribe](https://github.com/SINGROUP/dscribe)
- [AMP](https://bitbucket.org/andrewpeterson/amp)

## Installation

To install **DescriptorZoo.jl**, the registry of this package and all descriptor Julia pacakages 
should be added first with

> ] registry add https://github.com/DescriptorZoo/DescriptorReg.git

Once the registry is added, install the package as usual with

> ] add DescriptorZoo.jl

## Citation:

If you find this package useful, we would appreciate if you cite the following paper in any of your publications that use this code:

> Berk Onat, Christoph Ortner, James R. Kermode, "Sensitivity and Dimensionality of Atomic Environment Representations used for Machine Learning Interatomic Potentials", J. Chem. Phys. 153, (2020) doi:10.1063/5.0016005 [Paper](https://doi.org/10.1063/5.0016005)

Please note that the code has dependent codes underlying with different licenses and citations. Please check the dependent codes via the links above and cite the given references if you use the codes.

