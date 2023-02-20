# Lab 2: Jan Socha


| **DEC.EQ** | **B[1:0]** | **A[1:0]** | **B > A** | **B = A**	| **B < A** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 00 | 00 | 0 | 1 | 0 |
| 1 | 00	| 01 | 0	| 0 | 1 |
| 2 | 00	| 10 | 0	| 0 | 1 |
| 3 | 00	| 11 | 0	| 0 | 1 |
| 4 | 01	| 00 | 1	| 0 | 0 |
| 5 | 01	| 01 | 0	| 1 | 0 |
| 6 | 01	| 10 | 0	| 0 | 1 |
| 7 | 01	| 11 | 0	| 0 | 1 |
| 8 | 10	| 00 | 1	| 0 | 0 |
| 9 | 10	| 01 | 1	| 0 | 0 |
| 10 | 10 | 10	| 0 | 1 | 0 |
| 11 | 10 | 11	| 0 | 0 | 1 |
| 12 | 11 | 00	| 1 | 0 | 0 |
| 13 | 11 | 01	| 1 | 0 | 0 |
| 14 | 11 | 10	| 1 | 0 | 0 |
| 15 | 11 | 11	| 0 | 1 | 0 |

## 2-bit comparator
1. Karnaugh maps for other two functions of 2-bit comparator:

<img width="233" alt="image" src="https://user-images.githubusercontent.com/124675939/219032714-1605f6fc-21f1-4f37-b4da-ddbf1534e393.png">

<img width="229" alt="image" src="https://user-images.githubusercontent.com/124675939/219032824-56f9e259-3991-4a5b-b447-347129742a73.png">

2.Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

![image](https://user-images.githubusercontent.com/124675939/219035768-c7dfb1a4-6689-4f37-bc43-b3008fe80de4.png)

## 4-bit comparator
1. Listing of VHDL stimulus process from testbench file (testbench.vhd) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

Last two digits of my student ID: 230174

```vhdl
p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started";

        -- First test case ...
        s_b <= "0111"; -- Such as "0101" if ID = xxxx56
        s_a <= "0100"; -- Such as "0110" if ID = xxxx56
        wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination 0111, 0100 FAILED" severity error;


        -- WRITE OTHER TEST CASES HERE
        

        -- Report a note at the end of stimulus process
        report "Stimulus process finished";
        wait; -- Data generation process is suspended forever
    end process p_stimulus;
```

https://www.edaplayground.com/x/Kywa


