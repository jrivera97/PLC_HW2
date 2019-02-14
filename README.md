## HW2 RPN Calculator

### To run the code:

Open a command line and navigate to the code file, then type the following
```
	ocaml hello.ml < <input.txt>

```
where <input.txt> is your test file

To run the code with standard input, simply run
```
	ocaml hello.ml
```
Type your input on each line and the answer should appear when you press enter.

### What Works

You should be able to run the code and add in different RPN equations and receive the correct output. The assumptions I made for this hw were that the input would be given in RPN with only one space in between each operand or operator in the equation. I also assumed that the program would be tested using StdIn or redirected input into StdIn. I also am using failwith when I encounter errors, and printing a message and ending the program when an error is encountered since I assume that is expected behavior.

### Test Files

The test file is input.txt and expected results are in result.txt
