# Door-Lock-System

> Discription
 
This code is an example of a simple password-protected system written in assembly language using MASM (Microsoft Macro Assembler). The program prompts the user to enter a password, and if the entered password matches the pre-defined correct password, the user is allowed to enter a new key value. If the entered password is incorrect, the program displays an error message and allows the user to try again up to three times before asking for an administrator password. If the user enters an incorrect password more than three times, the program asks for an administrator password, and if the entered password matches the pre-defined administrator password, the user is allowed to proceed.

The above code is an x86 assembly language program for a simple password-protected system that controls a motor.

The program starts by declaring some data in the .data section. Answer and ADMIN are DWORD variables initialized with some values. Password is another DWORD variable that will hold user input. Msg1 through Msg6 are BYTE strings to be displayed to the user during the program's execution.

The main procedure begins with an infinite loop L1 that prompts the user for a password. The WriteString and ReadInt procedures are called to display the prompt and read in the user input, respectively. The input value is stored in the Password variable. The program then compares the input value to ADMIN and Answer using the cmp instruction. If the input matches ADMIN, the program jumps to L3 to prompt the user for a new key. If the input matches Answer, the program jumps to L6 to display a success message and activate the motor. Otherwise, the program jumps to L4 to display an error message and continue prompting the user for a password.

L3 prompts the user for a new key and reads in the input using ReadInt. The input value is stored in Answer and the program jumps back to L1 to continue the password verification process.

L4 displays an error message and loops back to L2 to continue prompting the user for a password. If the user enters an incorrect password three times, the program jumps to L5.

L5 displays a message prompting the user for the admin password. The program then compares the input value to ADMIN. If the input matches ADMIN, the program jumps back to L1. Otherwise, the program loops back to L5.

L6 displays a success message and activates the motor by displaying a message to the user.

Finally, the program exits using the exit macro.

Overall, the program provides a simple demonstration of how to use input and output procedures in x86 assembly language, as well as how to implement a password-protected system with basic error handling.
