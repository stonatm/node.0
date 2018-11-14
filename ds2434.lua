require("bit")
require("ow")

function ds2434_setup(data_pin)
    ow.setup(data_pin)
end

function ds2434_convert(data_pin)
    ow.reset(data_pin);
    ow.write(data_pin, 0xd2);
end


function ds2434_read(data_pin)

    local t_0 = 0
    local t_1 = 0
    local t_h = ""
    -- read temperature (-40..85)
    ow.reset(data_pin);
    ow.write(data_pin, 0xb2);
    ow.write(data_pin, 0x61);
    t_0 =  ow.read(data_pin);
    if ( bit.isset(t_0, 7) ) then
        t_0 =t_0-256
    end

    -- read temperature (0..127 +-0.5)
    ow.reset(data_pin);
    ow.write(data_pin, 0xb2);
    ow.write(data_pin, 0x60);
    t_1 =  ow.read(data_pin);

    if ( bit.isset(t_1, 0) ) then t_h=".5" else t_h = ".0" end
    
    t_1 = bit.rshift( t_1, 1);
    if t_0 >= 0 then return (t_1..t_h) else return t_0 end

end
