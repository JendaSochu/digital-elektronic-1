# Lab 8: Jan Socha

### Traffic light controller

1. Listing of VHDL code of the completed process `p_traffic_fsm`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
    --------------------------------------------------------
    -- p_traffic_fsm:
    -- The sequential process with synchronous reset and 
    -- clock_enable entirely controls the s_state signal by 
    -- CASE statement.
    --------------------------------------------------------
    p_traffic_fsm : process(clk)
    begin
        if rising_edge(clk) then

       
          if (rst = '1') then                    -- Synchronous reset
            sig_state <= WEST_STOP;              -- Init state
            sig_cnt   <= c_ZERO;                 -- Clear delay counter
          elsif (sig_en = '1') then
            -- Every 250 ms, CASE checks the value of the s_state
            -- variable and changes to the next state according
            -- to the delay value.
            case sig_state is

              when WEST_STOP =>
                -- Count up to c_DELAY_2SEC
                if (sig_cnt < c_DELAY_2SEC) then
                  sig_cnt <= sig_cnt + 1;
                else
                  -- Move to the next state
                  sig_state <= WEST_GO;
                  -- Reset local counter value
                  sig_cnt <= c_ZERO;
                end if;

              when WEST_GO =>
                -- Count up to c_DELAY_4SEC
                if (sig_cnt < c_DELAY_4SEC) then
                  sig_cnt <= sig_cnt + 1;
                else
                  -- Move to the next state
                  sig_state <= WEST_WAIT;
                  -- Reset local counter value
                  sig_cnt <= c_ZERO;
                end if;

              when WEST_WAIT =>
                -- Count up to c_DELAY_1SEC
                if (sig_cnt < c_DELAY_1SEC) then
                  sig_cnt <= sig_cnt + 1;
                else
                  -- Move to the next state
                  sig_state <= SOUTH_STOP;
                  -- Reset local counter value
                  sig_cnt <= c_ZERO;
                end if;

             when SOUTH_STOP =>
                -- Count up to c_DELAY_2SEC
                if (sig_cnt < c_DELAY_2SEC) then
                  sig_cnt <= sig_cnt + 1;
                else
                  -- Move to the next state
                  sig_state <= SOUTH_GO;
                  -- Reset local counter value
                  sig_cnt <= c_ZERO;
                end if;

             when SOUTH_GO =>
                -- Count up to c_DELAY_4SEC
                if (sig_cnt < c_DELAY_4SEC) then
                  sig_cnt <= sig_cnt + 1;
                else
                  -- Move to the next state
                  sig_state <= SOUTH_WAIT;
                  -- Reset local counter value
                  sig_cnt <= c_ZERO;
                end if; 

             when SOUTH_WAIT =>
                -- Count up to c_DELAY_4SEC
                if (sig_cnt < c_DELAY_1SEC) then
                  sig_cnt <= sig_cnt + 1;
                else
                  -- Move to the next state
                  sig_state <= WEST_STOP;
                  -- Reset local counter value
                  sig_cnt <= c_ZERO;
                end if; 


              when others =>
                -- It is a good programming practice to use the
                -- OTHERS clause, even if all CASE choices have
                -- been made.
                sig_state <= WEST_STOP;
                sig_cnt   <= c_ZERO;

            end case;

          end if; -- Synchronous reset
        end if; -- Rising edge
      end process p_traffic_fsm;


```

2. Screenshot with simulated time waveforms. The full functionality of the entity must be verified. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![Capture](https://user-images.githubusercontent.com/124675939/229709907-5c7e7073-92ea-4f53-b5be-911e5f2d0afd.png)

3. Figure of Moor-based state diagram of the traffic light controller with *speed button* to ensure a synchronous transition to the `WEST_GO` state. The image can be drawn on a computer or by hand. Always name all states, transitions, and input signals!

    ![picture](https://user-images.githubusercontent.com/124675939/229710172-efb1b39e-9b11-48e7-8d2a-48acc4172771.png)

   
