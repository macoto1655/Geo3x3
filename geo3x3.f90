module geo3x3
  implicit none
  public encode
contains
  function encode(a, b)
    integer,intent(in):: a, b
    integer encode
    encode = a + b
  end function encode
end

