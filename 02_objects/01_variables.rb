# variables
puts "\n***********************************\nvars"
a = 1
b = a + 2
puts a, b

# variable scope indicators
$i_am_global = 1
@@i_am_class = 2
@i_am_instance = 3
i_am_local = 4
puts $i_am_global + @@i_am_class + @i_am_instance + i_am_local

