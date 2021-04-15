library verilog;
use verilog.vl_types.all;
entity CPUrequest is
    port(
        bitMS           : in     vl_logic;
        invalid         : in     vl_logic;
        CPU_read_HitMiss: in     vl_logic;
        CPU_write_HitMiss: in     vl_logic;
        next_MSI        : out    vl_logic_vector(1 downto 0);
        read_miss       : out    vl_logic;
        invalidate      : out    vl_logic;
        write_miss      : out    vl_logic;
        write_back      : out    vl_logic
    );
end CPUrequest;
