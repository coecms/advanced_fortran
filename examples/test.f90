program test
    implicit none
    integer :: a(10)
    integer :: i
    do i = 1, 10
        a(i) = i
    end do
    print *, get_element(a, 1000000000)
    print *, a
contains
    function get_element(a, i) result (r)
        implicit none
        integer, intent(in) :: i
        integer, dimension(:), intent(inout):: a
        integer :: r
        r = a(i)
        a(i) = 100
    end function get_element
end program test
