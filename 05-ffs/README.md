
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
   | ↑ | 0 |  |  |  |  |
   | ↑ | 0 |  |  |  |  |
   | ↑ | 1 |  |  |  |  |
   | ↑ | 1 |  |  |  |  |
   | ↑ | 1 |  |  |  |  |
   | ↑ | 1 |  |  |  |  |

   **T-type FF**
   | **clk** | **t** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ↑ | 0 | 0 | 0 | Output did not change |
   | ↑ | 0 | 1 |  |  |
   | ↑ | 1 |  |  |  |
   | ↑ | 1 |  |  |  |

<a name="part1"></a>
