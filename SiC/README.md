# SiC Convergence, Lattice Constant, Bulk Modulus, Band Structure using DFT


## Computational Details:
**Code:** QE (v7.4.1)  
**Exchance-Correlational Functional:** PBE (GGA)  
**Pseudopotentials:** Uultrasoft pseudopotentials PSlibrary  
- **K-point grids:**
  - SCF: 13 13 13
  - Band Structure: High-Symmetry Path Γ, X, W, K, Γ, L, U
- **Converged parameters:**
  - ecutwfc: 35.0
  - ecutrho: 140.0


## Commands used for Band Structure Calculation of SiC:
1. mpirun -np 6 pw.x <SiC.scf.band.in> SiC.scf.band.out
2. mpirun -np 6 pw.x <SiC.nscf.band.in > SiC.nscf.band.ou
3. bands.x <SiC.bands.in>SiC.bands.out
4. grep -e 'highest occupied' SiC.scf.band.out
5. plotband.x


## Commands used for DOS Structure Calculation of SiC:
1. mpirun -np 6 pw.x <SiC.scf.dos.in>SiC.scf.dos.out
2. mpirun -np 6 pw.x <SiC.nscf.dos.in>SiC.nscf.dos.out
3. dos.x <SiC.dos.in>SiC.dos.out


## Calculated Results: 
- Lattice constant = 8.2388 Bohr
- Band Gap = 1.36 eV (indirect at X-Γ)
- Bulk Modulus = 427.5221457 GPa using Birch–Murnaghan 3rd-order fit (ELK/eos tool)


## References
- Materials Project. (2025). Materials Project. https://next-gen.materialsproject.org/materials/mp-8062#properties
- 
