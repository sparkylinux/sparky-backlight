#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /usr/bin/sparky-backlight
	rm -f /etc/xdg/autostart/sparky-backlight.desktop
	#rm -f /opt/tray/sparky-backlight
else
	cp bin/* /usr/bin/
	cp etc/* /etc/xdg/autostart/
	#if [ ! -d /opt/tray ]; then
	#	mkdir -p /opt/tray
	#fi
	#cp opt/* /opt/tray/
fi
