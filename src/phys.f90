module physics
   ! Provides pi and physics constants taken from CODATA'89 as
   ! given on the NIST site; namely, bk (Boltzmann's constant),
   ! amassn (the neutron mass in amu), amu (the amu value itself),
   ! hbar (Planck's constant), ev (the conversion to eV), and
   ! clight (the speed of light).
   use locale ! provides kr
   implicit none
!
! Constants per ENDF-102, Appendix G (October 24, 2012 edition, also
! identified as SVN Commit:  Revision 85).  This is the manual version
! available from http://www.nndc.bnl.gov/csewg/docs/endf-manual.pdf in
! the Spring 2017.
!  - numerical values are given for pi, Boltzmann's constant, eV
!    speed of light, atomic mass unit in eV, Planck's constant and
!    the fine structure constant.
!  - other values are given in terms of the above.
   real(kr),parameter,public::pi=3.14159265359e0_kr     !
   real(kr),parameter,public::euler=0.55721566490153286e0_kr !
   real(kr),parameter,public::bk=8.617342e-5_kr         !eV/degK
   real(kr),parameter,public::ev=1.602176462e-12_kr     !erg/eV
   real(kr),parameter,public::clight=2.99792458e10_kr   !cm/s
   real(kr),parameter,public::amu=931.494013e6_kr*ev/&
                                        (clight*clight) !g/amu
   real(kr),parameter,public::hbar=6.58211889e-16_kr*ev !Planck/2pi, erg
   real(kr),parameter,public::finstri=1.e16_kr*hbar/(ev*ev*clight) !inv fine str
! ****************************************************************
! * Light particle masses (in amu), per ENDF-102, Appendix G:    *
! * - note, these are particle masses, not atomic masses.        *
! * - we use "a" to start the variable name due to the legacy    *
! *   fortran naming convention that would have considered a     *
! *   name of the form "massn" to be an integer variable.        *
! ****************************************************************
   real(kr),parameter,public::amassn=1.00866491578e0_kr !neutron
   real(kr),parameter,public::amassp=1.00727646688e0_kr !proton
   real(kr),parameter,public::amassd=2.01355321271e0_kr !deuteron
   real(kr),parameter,public::amasst=3.015500713e0_kr   !triton
   real(kr),parameter,public::amassh=3.01493223469e0_kr !hellion (3)
   real(kr),parameter,public::amassa=4.0015061747e0_kr  !alpha
   real(kr),parameter,public::amasse=5.485799110e-4_kr  !electron
end module physics

