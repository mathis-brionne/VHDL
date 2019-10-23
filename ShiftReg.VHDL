library IEEE ;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.STD_LOGIC_ARITH.ALL ;
use IEEE.STD_LOGIC_UNSIGNED.ALL ;

entity ShiftReg is
  Port( Reset : in STD_LOGIC ;
        Clk : in STD_LOGIC ;
        shift : in STD_LOGIC ;
        Q : inout STD_LOGIC_VECTOR (7 downto 0));
end ShiftReg ;

architecture behavioral  of  ShiftReg is
begin
  process (Reset ,shift , Clk)
  begin
    if( Reset = '0') then

      if shift ='1' then Q <= "10000000";
      else Q <="00000001";
      end if ;

    elseif (clk'event and clk='0') then

      if (shift ='1') then
        
        if (Q="00000001") then Q <= "10000000";
        else Q <= '1' & Q (7 downto 1)
        end if;
      else

        if (Q="10000000") then Q <= "00000001";
        else Q <= Q (7 downto 1) & '1'
        end if ;

      end if;

    end if;
end process ;
end behavioral ;
