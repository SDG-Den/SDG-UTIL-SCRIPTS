> colortui

reads the current Material You color palette from Matugen's generated colors.json and displays each color name, its hex value, and a color swatch block in the terminal.

**run:** colortui

**source:** colors.sh at ~/.local/SDG-UTILS/colors.sh
**data:** ~/.local/state/quickshell/user/generated/colors.json

the script parses JSON with jq, converts hex to RGB for 24-bit terminal color output, and prints a formatted table. press any key to exit.
