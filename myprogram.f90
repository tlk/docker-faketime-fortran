program myprogram
  implicit none

  character(len=8) :: date_string
  character(len=10) :: time_string
  character(len=5) :: zone_string

  call date_and_time(date_string, time_string, zone_string)

  ! Print the current date, time, and timezone in the format "YYYY-MM-DD HH:MM:SS ±HHMM"
  print *, 'Fortran date and time: ', &
        date_string(1:4), '-', date_string(5:6), '-', date_string(7:8), ' ', &
        time_string(1:2), ':', time_string(3:4), ':', time_string(5:6), ' ', zone_string

end program myprogram