library IEEE ;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.STD_LOGIC_ARITH.ALL ;
use IEEE.STD_LOGIC_UNSIGNED.ALL ;


entity Encoder is
  port ( inCode : in STD_LOGIC_VECTOR (7 downto 0);
  clock : in STD_LOGIC ;
  outCode : out STD_LOGIC_VECTOR (2 downto 0));
end entity;

architecture behavioral of Encoder is

  signal
  process(Incode) is
  begin
    case( inCode ) is
      when "00000001" =>  outCode <= "000" ;
      when "00000010" =>  outCode <= "001" ;
      when "00000100" =>  outCode <= "010" ;
      when "00001000" =>  outCode <= "011" ;
      when "00010000" =>  outCode <= "100" ;
      when "00100000" =>  outCode <= "101" ;
      when "01000000" =>  outCode <= "110" ;
      when "10000000" =>  outCode <= "111" ;
      when others =>  outCode <= "ZZZ" ;

    end case;
  end process ;
end behavioral;
