# Lab 5: Jan Socha


1. Write characteristic equations and complete truth tables for D, JK, T flip-flops where `q(n)` represents main output value before the clock edge and `q(n+1)` represents output value after the clock edge.

![eq_flip_flops](https://user-images.githubusercontent.com/124675939/223222516-e68ddc7d-c238-42e6-bef9-f6cca9a511bf.png)

<!--
https://editor.codecogs.com/
\begin{align*}
    q_{n+1}^D =&~D \\
    q_{n+1}^{JK} =& \\
    q_{n+1}^T =& \\
\end{align*}
-->

   **D-type FF**
   | **clk** | **d** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ↑ | 0 | 0 | 0 | `q(n+1)` has the same level as `d` |
   | ↑ | 0 | 1 |  |  |
   | ↑ | 1 |  |  |  |
   | ↑ | 1 |  |  |  |

   **JK-type FF**
   | **clk** | **j** | **k** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-: | :-- |
   | ↑ | 0 | 0 | 0 | 0 | Output did not change |
   | ↑ | 0 | 0 | 1 | 1 | Output did not change |
   | ↑ | 0 | 1 | 0 | 0 |  |
   | ↑ | 0 | 1 | 1 | 0 |  |
   | ↑ | 1 | 0 | 0 | 1 |  |
   | ↑ | 1 | 0 | 1 | 1 |  |
   | ↑ | 1 | 1 | 0 | 1 |  |
   | ↑ | 1 | 1 | 1 | 0 |  |

   **T-type FF**
   | **clk** | **t** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ↑ | 0 | 0 | 0 | Output did not change |
   | ↑ | 0 | 1 |  |  |
   | ↑ | 1 |  |  |  |
   | ↑ | 1 |  |  |  |

<a name="part1"></a>


### D & T Flip-flops

1. Screenshot with simulated time waveforms. Try to simulate both D- and T-type flip-flops in a single testbench with a maximum duration of 200 ns, including reset. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![simulace](https://user-images.githubusercontent.com/124675939/224557171-708f28b5-841d-4b30-8198-a4f9297dd688.png)


### JK Flip-flop

1. Listing of VHDL architecture for JK-type flip-flop. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture Behavioral of jk_ff_rst is
    -- It must use this local signal instead of output ports
    -- because "out" ports cannot be read within the architecture
    signal sig_q : std_logic;

begin
    -- WRITE YOUR CODE HERE
    p_t_ff_rst : process (clk)
    begin
        if rising_edge(clk) then
        -- WRITE YOUR CODE HERE
            if (rst = '1') then 
                sig_q <= '0';
            elsif (j = '0') and (k = '0') then
                sig_q <= sig_q;
            elsif (j = '0') and (k = '1') then
                sig_q <= '0';
            elsif (j = '1') and (k = '0') then
                sig_q <= '1';
            elsif (j = '1') and (k = '1') then
                sig_q <= not sig_q;
            end if;
        end if;
    end process p_t_ff_rst;

    -- Output ports are permanently connected to local signal
    q     <= sig_q;
    q_bar <= not sig_q;
end architecture Behavioral;
```

### Shift register

1. Image of `top` level schematic of the 4-bit shift register. Use four D-type flip-flops and connect them properly. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!


![schema](https://user-images.githubusercontent.com/124675939/224557185-151db346-541e-41f9-9727-15214a1ee36a.jpg)

