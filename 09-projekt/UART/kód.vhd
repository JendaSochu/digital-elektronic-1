 multiplexer : process (clk) is
  begin

   counter <= '0'
   counter_1 <= '0'
   
    if (rising_edge(clk)) then
      if (vysilac = '1') then
        counter <= counter + 1;
      else
        counter_1 <= counter_1 + 1;
      end if;
    end if;
    
    if (counter = '7') then
      counter <= '0'
    end if
     
case counter is

          when "0" =>
            vystup <= tlačítko_0

          when "1" =>
            vystup <= tlačítko_1
 
          when "2" =>
            vystup <= tlačítko_2
 
          when "3" =>
            vystup <= tlačítko_3
 
          when "4" =>
            vystup <= tlačítko_4
 
          when "5" =>
            vystup <= tlačítko_5
 
          when "6" =>
            vystup <= tlačítko_6
          
         when "7" =>
            vystup <= tlačítko_7
        end case;
         
  end process multiplexer;
