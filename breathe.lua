require("bit")
require("pwm")

function breathe(led_pin, delay_ms_in, delay_ms_out)
    -- initialise pin
    gpio.mode(led_pin, gpio.OUTPUT)
    gpio.write(led_pin, 0)
    -- initialise pwm
    pwm.setup(led_pin, 1000, 0)
    pwm.start(led_pin)
    pwm.setduty(led_pin, 0)
    -- breathe in
    for i=0, 10, 1 do
        duty = bit.bit(i) - 1
        pwm.setduty(led_pin, duty)
        tmr.delay(delay_ms_in * 1000)
    end
    -- breathe out
    for i=9, 0, -1 do
        duty = bit.bit(i) - 1
        pwm.setduty(led_pin, duty)
        tmr.delay(delay_ms_out * 1000)
    end
    -- stop pwm
    pwm.stop(led_pin)    
end
