# rgbkeys

Reads a percentage value from stdin (0-100) and displays a visual representation on an RGB keyboard by lighting up corresponding keys. Uses the current Material You color palette from the SDG RGB daemon.

**run:** `rgbkeys` (typically used via pipe, e.g., `echo 75 | rgbkeys`)

**source:** `rgb-bar.sh` at `~/.local/SDG-UTILS/rgb-bar.sh`

**data:** `~/.local/SDG-RGB-DAEMON/colors.theme` — color theme file  
**data:** `~/.local/SDG-RGB-DAEMON/colors.active` — active boosted colors

The script reads a percentage from stdin, calculates how many of the 12 function keys (F1-F12) to illuminate, and sends RGB commands to the keyboard controller device at `/dev/input/ckb1/cmd`. Lit keys use the `primary` color, unlit keys use `primary_dim`. Colors are gamma-corrected (gamma 2.8) for perceptual uniformity.