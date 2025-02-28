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

public enum Types.Power {
    UNKNOWN = 1,
    WARNING = 2,
    OFF = 0,
    ON = 65535;

    public string to_string() {
        switch (this) {
            case UNKNOWN:
                return "unknown";
            case WARNING:
                return "warning";
            case OFF:
                return "off";
            case ON:
                return "on";
            default:
                print ("ERROR: Unsupported value %d\n", this);
                assert_not_reached();
        }
    }
}
