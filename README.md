# Number Theory: Addition

In this lab we implemented various modules that handle functions related to bitwise addition. The most basic of which is the light module, which is a simple XOR process, and the most advanced of which is a full adder that has functionality for adding a variable amount of bits together using a complex Boolean equation that incorporates carry overs and individually computes output bits according to the provided specifications.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - How might you add more than two bits together?
To add multiple bits together, one would simply need more full adders. The implementation is modularized so this is relatively straightforward. We could theoretically use as many full adders as we have bits to add.
### 2 - What is the importance of the XOR gate in an adder?
XOR can be used in a basic adder to compute the output bit, essentially computing the sum when ignoring carryout and carryin.
### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
A two bit adder can create an output of up to 3. Two bits can represent numbers between 0 and 3, so the largest of which is b(11) which is 3. If you go over this quantity, we are left either with a carryout which must be ignored given the specifications for our output, or in more sophisticated implementations we arrive at an Overflow case. This would typically result in an incorrect result for our sum.
