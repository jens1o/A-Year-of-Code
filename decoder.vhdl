library ieee;
use ieee.std_logic_1164.all;

entity DECODER is
port(	IN:	in std_logic_vector(1 downto 0);
	OUT:	out std_logic_vector(3 downto 0)
);
end DECODER;

-------------------------------------------------

architecture behv of DECODER is

begin

    process (IN)
    begin
      case I is
	         when "00" => OUT <= "0001";
	         when "01" => OUT <= "0010";
	         when "10" => OUT <= "0100";
	         when "11" => OUT <= "1000";
	         when others => OUT <= "XXXX";
	    end case;

    end process;
	
end behv;

architecture behv2 of DECODER is

begin

    OUT <= 	"0001" when I = "00" else
		        "0010" when I = "01" else
		        "0100" when I = "10" else
		        "1000" when I = "11" else "XXXX";

end when_else;
