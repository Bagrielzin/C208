# 1
# a = $s0, b = $s1, c = $s2, d = $s3, e = $s4, f = $s5

# a)
add $t0,$s0,$s1 # t0 = a + b
sub $s3,$t0,$s2 # d = a + b - c

# b)
add $t0,$s0,$s1 # t0 = a + b
sub $s5,$t0,$s3 # f = (a + b) - d

# c)
sub $t0,$s1,$s2 # t0 = b - c
sub $t0,$s0,$t0 # t0 = a - (b - c)
add $s4,$t0,$s5 # e = a - (b - c) + f

# d)
sub $t0,$s0,$s1 # t0 = a - b
sub $t1,$s1,$s2 # t1 = b - c
add $t0,$t0,$t1 # t0 = (a - b) + (b - c)
sub $s5,$s4,$t0 # f = e - (a - b) + (b - c)

# 2

# a) a = b[15] - c
lw $t0,60($s1) # t0 = b[15]
sub $s0,$t0,$s2 # a = b[15] - c

# b) b = a[5] + c[3]
lw $t0,20($s0) # t0 = a[5]
lw $t0,12($s0) # t1 = c[3]
add $s1,$t0,$t1 # b = a[5] + c[3]

# 3
# a = $s0, b = $s1, c = $s2, d = $s4

# a) a[45] = b - c + d[67]
sub $t0,$s1,$s2 # t0 = b - c
lw $t1,268($s4) # t1 = d[67]
add $t0,$t0,$t1 # t0 = b - c + d[67] 
sw $t0,180($s0) # a[45] = b - c + d[67]

# b) a[79] = b - c[18] + d
lw $t0,72($s2) # t0 = c[18]
sub $t0,$s1,$t0 # t0 = b - c[18]
add $t0,$t0,$s4 # t0 = b - c[18] + d
sw $t0,316($s0) # a[79] = b - c[18] + d    