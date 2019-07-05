/*
* Copyright (c) 2019 Manexim (https://github.com/manexim)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Marius Meisenzahl <mariusmeisenzahl@gmail.com>
*/

public class Philips.Hue.Controller : Controllers.DeviceController {
    private Philips.Hue.BridgeController controller;

    public Controller (Models.Device device) {
        Object (
            device : device
        );

        controller = new Philips.Hue.BridgeController ((device as Philips.Hue.Lamp).bridge);
    }

    public override void switch_brightness (uint16 brightness) {
        controller.switch_light_brightness (device as Philips.Hue.Lamp, (uint8) brightness);

        (device as Philips.Hue.Lamp).brightness = brightness;
    }

    public override void switch_power (bool on) {
        controller.switch_light_power (device as Philips.Hue.Lamp, on);

        _device.power = on ? Types.Power.ON : Types.Power.OFF;
    }
}
