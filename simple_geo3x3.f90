include "geo3x3.f90"

program hello
!  use geo3x3
  print *, 'Hello F World!'
  call geo3x3.encode(3, 3)
end program hello
