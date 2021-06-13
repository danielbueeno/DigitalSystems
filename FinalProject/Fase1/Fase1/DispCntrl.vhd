
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY DispCntrl IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        s0 : OUT STD_LOGIC;
        s1 : OUT STD_LOGIC
    );
END DispCntrl;

ARCHITECTURE BEHAVIOR OF DispCntrl IS
    TYPE type_fstate IS (DezMin,UniMin,UniH,DezH);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= UniMin;
            s0 <= '0';
            s1 <= '0';
        ELSE
            s0 <= '0';
            s1 <= '0';
            CASE fstate IS
                WHEN DezMin =>
                    reg_fstate <= UniH;

                    s1 <= '0';

                    s0 <= '1';
                WHEN UniMin =>
                    reg_fstate <= DezMin;

                    s1 <= '0';

                    s0 <= '0';
                WHEN UniH =>
                    reg_fstate <= DezH;

                    s1 <= '1';

                    s0 <= '0';
                WHEN DezH =>
                    reg_fstate <= UniMin;

                    s1 <= '1';

                    s0 <= '1';
                WHEN OTHERS => 
                    s0 <= 'X';
                    s1 <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
