
# node.0
Short &amp; simple Lua scripts for **Esp8266 NodeMcu**

## breathe.lua

Breathe led effect using PWM, require **bit** and **pwm** modules
```
function breathe( led_pin, delay_ms_in, delay_ms_out )
```
parameters:

**led_pin** - led pin number

**delay_ms_in** - fade-in step time in *ms*

**delay_ms_out** - fade-out step time in *ms*

Total breathe effect time equals **(11 x delay_ms_in)+(11 x delay_ms_out)** *ms*
