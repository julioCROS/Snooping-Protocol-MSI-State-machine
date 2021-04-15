library verilog;
use verilog.vl_types.all;
entity BUSrequest is
    port(
        bitMS           : in     vl_logic;
        invalid         : in     vl_logic;
        read_miss       : in     vl_logic;
        write_miss      : in     vl_logic;
        invalidate      : in     vl_logic;
        next_MSI        : out    vl_logic_vector(1 downto 0);
        write_back      : out    vl_logic;
        abort_mem_access: out    vl_logic
    );
end BUSrequest;
