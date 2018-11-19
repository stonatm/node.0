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

## ds2434.lua

Functions for read only temperature from ds2434, other functions of this ic are not implemented, require **bit** and **ow** modules
```
function ds2434_setup( data_pin )
```
This function initialise one wire on selected pin.
parameters:

**data_pin** - pin number where is connected ds2434 DQ

```
function ds2434_convert( data_pin )
```
This function send convert command to ic for start measuring temperature

parameters:

**data_pin** - pin number where is connected ds2434 DQ

```
function ds2434_read( data_pin )
```
