# NaCl Structure Calculation of Convergence, Lattice constants, Bulk Modulus, Band Structure and DOS


## This folder contains 
1. inputs and results of calculations.  
2. The relevant references are also given along with links.  
3. Some necessary Commands are also added in the files on how to run them.


## Computational Details:
**Code:** QE (v7.4.1)  
**Exchance-Correlational Functional:** PBE (GGA)  
**Pseudopotentials:** Uultrasoft pseudopotentials PSlibrary  
- **K-point grids:**
  - SCF: 10 10 10
  - Band Structure: High-Symmetry Path Γ, X, W, K, Γ, L
- **Converged parameters:**
  - ecutwfc: 40.0
  - ecutrho: 320.0

## Commands used for Band Structure Calculation of NaCl:
1. mpirun -np 6 pw.x <NaCl.scf.band.in> NaCl.scf.band.out
2. mpirun -np 6 pw.x <NaCl.nscf.band.in > NaCl.nscf.band.ou
3. bands.x <NaCl.bands.in>NaCl.bands.out
4. grep -e 'Fermi' NaCl.scf.band.out
5. plotband.x


## Calculated Results
-  Lattice constant: 5.70 Å
- Band Gap: 4.93 eV, direct (at Γ)


## References
1. Materials Project. (2025). Materials Project. https://next-gen.materialsproject.org/materials/mp-22862?formula=NaCl
