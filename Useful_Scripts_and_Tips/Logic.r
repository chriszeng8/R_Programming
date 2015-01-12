# Jan 12, 2015 (C.Zeng)
# 1. not equal `!=`
# 2. Diff between & and && (for AND operator):
# we use the `&` operator to evaluate AND across a vector. The `&&` version of AND
# only evaluates the first member of a vector
# 3. same as the OR operator: |(vector) and || (left most)
# 4. AND operator has a higher priority over OR operatr, in a expression with 
# multiple logical operators. (e.g.,5 > 8 || 6 != 8 && 4 > 3.9)
# 5. isTrue() function takes argument. ONLY A NON-ZERO number would NOT work!
# (e.g. isTrue(1) will return as FALSE)
# 6. xor: exclusive OR, If one argument evaluates to TRUE and one argument
# evaluates to FALSE, then this function will return TRUE. otherwise, return FALSE.
# 7. sample(n): generate number from 1 to n in a random sequence.
# 8. which(x>10): returns the indices of elements in vector x that are greater than 10
# 9. any(x>10): OR statement applied to a sequence
# 10. all(x>10): AND statement applied to a sequence

#========================= & (or |) =================================================
# You can use the `&` operator to evaluate AND across a vector. The `&&` version of AND
# only evaluates the first member of a vector. Let's test both for practice. Type the
# expression TRUE & c(TRUE, FALSE, FALSE).
TRUE & c(TRUE, FALSE, FALSE)
#[1]  TRUE FALSE FALSE
# Explanation:
# What happens in this case is that the left operand `TRUE` is recycled across every
# element in the vector of the right operand. This is the equivalent statement as c(TRUE,
# TRUE, TRUE) & c(TRUE, FALSE, FALSE).

c(T,F,T)&c(T,F,F)
# vector of AND between elements of the same index in two vectors
c(T,F)&c(T,F,F)
# The recycling rule will apply to the shorter vector this case

#========================= && (or ||)===============================================
TRUE && c(TRUE, FALSE, FALSE)
#[1] TRUE

# Explanation:
# In this case, the left operand is only evaluated with the first member of the right
# operand (the vector). The rest of the elements in the vector aren't evaluated at all
# in this expression.

# ======= RULE OF THUMB: AND operators are evaluated before OR operators ======
# What happen when we chain together multiple logical operators.
5 > 8 || 6 != 8 && 4 > 3.9
#[1] TRUE

#========================   isTRUE function ==================================
isTRUE(6>6)
isTRUE(6==6)
isTRUE(1)
#NOTE that isTRUE take an argument, but a single number
# isTRUE(1) will return FALSE as it is not a statement

#===================   Generate random sequence ==============================
sample(10)
# [1]  5  3  7  6  2  1  9  8 10  4

#========================   which function  ==================================
x=1:10
which (x>7)
#returns the indices of elements within vector x that are greater than 7


# Like the which() function, the functions any() and all() take logical vectors as their
# argument. The any() function will return TRUE if one or more of the elements in the
# logical vector is TRUE. The all() function will return TRUE if every element in the
# logical vector is TRUE.
any(x>7)
all(x>7)
