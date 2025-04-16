#Questão 1
# b = $t1, a = $t2
# ori $t1,$t2,25

# Questão 2
# Um é no formato BIG e outro no LITTLE

#Questão 4
# a) 0x12345678
# b) 0x9ABCDEF0
# c) 0x00000012
# d) 0x0000009A || 0xFFFFFF9A
# e) 0x00000078
# f) 0x00009ABC
# g) 0x01
#    0x23
#    0x45
#    0x67

# h) 0x67
# i) 0x67

# Questão 5
# a = $t1, b = $t2, c = $t3, d = $t4, g = $t5
li $t1,1 # a
li $t2,2 # b
li $t3,2 # c
li $t4,1 # d
li $t5,5 # g

# a)
#bge $t1,$t2,else
#addi $t5,$t5,1
#else:

# b) 
#bge $t1,$t2,else
#addi $t5,$t5,1
#j fim
#else:
#addi $t5,$t5,-1
#fim:

# c)
#bge $t1,$t2,else
#bnez $t3,else
#li $t4,0
#else:

# d)
#blt $t1,$t2,cond_2
#addi $t5,$t5,1
#j fim
#cond_2:
#bgt $t3,$t4,fim
#addi $t5,$t5,1
#fim:

