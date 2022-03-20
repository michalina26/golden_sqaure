## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

``` ruby
is_correct = check_grammr(text)

# * text is a string with words in it
# * is_correct is a boolean depending on whether it checks out
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

``` ruby
# 1
check_grammar(" ")
# fail "Not a sentence."

# 2
check_grammar("Hello, I am Micha.")
# => true

# 3
check_grammar("Hello, I am Micha")
# => false

# 4
check_grammar("hello, I am Micha.")
# => false

# 4.5
check_grammar("hello, I am Micha")
# => false

# 5
check_grammar("HELLO, I am Micha.")
# => true

# 6
check_grammar("Hello, I am Micha!")
# => true

# 7
check_grammar("Hello, I am Micha?")
# => true

# 8
check_grammar("Hello, I am Micha,")
# => false
```
_Encode each example as a test. You can add to the above list as you go._ 

## 4. Implement the Behaviour 

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._