!--------------------------------------------------------------------------
! This is free software, you can use/redistribute/modify it under the terms of
! the EC-RPN License v2 or any later version found (if not provided) at:
! - http://collaboration.cmc.ec.gc.ca/science/rpn.comm/license.html
! - EC-RPN License, 2121 TransCanada, suite 500, Dorval (Qc), CANADA, H9P 1J3
! - service.rpn@ec.gc.ca
! It is distributed WITHOUT ANY WARRANTY of FITNESS FOR ANY PARTICULAR PURPOSE.
!-------------------------------------------------------------------------- 
#include "../stop_mpi.h"

!/@*
subroutine test_stop_mpi()
   implicit none
#include <utils4tests.hf>
   !@author  Stephane Chamberland, 2009-11
!*@/
   integer :: iErr,mype
   !---------------------------------------------------------------------
   !TODO: find a way to check for not printed msg that should be printed
   mype = utils4test_toy_mpi_init('test_stop_mpi')

   call stop_mpi(STOP_ERROR,'test_stop_mpi',TEST_PASSED_MSG)

   call utils4test_fail('Should not get to the end of the sub')

   call utils4test_toy_mpi_end()
   !---------------------------------------------------------------------
   return
end subroutine test_stop_mpi


