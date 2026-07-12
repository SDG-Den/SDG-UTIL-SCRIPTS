#!/bin/bash

GAMMA=2.8

setrgb() {
    local KEY=$1
    local RGB=$2
    echo "rgb $KEY:$RGB" > /dev/input/ckb1/cmd
}

colorsfile=$HOME/.local/SDG-RGB-DAEMON/colors.theme
colorsactive=$HOME/.local/SDG-RGB-DAEMON/colors.active

boost_contrast() {
    local hex=$1
    [ ${#hex} -lt 6 ] && { echo "$hex"; return; }
    python3 << PYEOF
r = int("${hex:0:2}", 16)
g = int("${hex:2:2}", 16)
b = int("${hex:4:2}", 16)
nr = int(((r/255)**$GAMMA) * 255)
ng = int(((g/255)**$GAMMA) * 255)
nb = int(((b/255)**$GAMMA) * 255)
nr = max(0, min(255, nr))
ng = max(0, min(255, ng))
nb = max(0, min(255, nb))
print(f"{nr:02X}{ng:02X}{nb:02X}")
PYEOF
}

enumcolors() {
    primary=$(boost_contrast "$(grep -e "PRIMARY=" "$colorsfile" | cut -d= -f2)")
    primary_dim=$(boost_contrast "$(grep -e "DIM=" "$colorsfile" | cut -d= -f2)")
    alt=$(boost_contrast "$(grep -e "ALT=" "$colorsfile" | cut -d= -f2)")
    alt_dim=$(boost_contrast "$(grep -e "ALTDIM=" "$colorsfile" | cut -d= -f2)")
    ok=$(boost_contrast "$(grep -e "OK=" "$colorsfile" | cut -d= -f2)")
    warn=$(boost_contrast "$(grep -e "WARN=" "$colorsfile" | cut -d= -f2)")
    error=$(boost_contrast "$(grep -e "ERROR=" "$colorsfile" | cut -d= -f2)")
    cat > "$colorsactive" << EOF
primary=$primary
primary_dim=$primary_dim
alt=$alt
alt_dim=$alt_dim
ok=$ok
warn=$warn
error=$error
EOF
    echo "primary: $primary"
    echo "primary_dim: $primary_dim"
    echo "alt: $alt"
    echo "alt_dim: $alt_dim"
    echo "ok: $ok"
    echo "warn: $warn"
    echo "error: $error"
}
# initialize colors
enumcolors


#!/bin/bash

# Read the piped percentage value and remove decimals
percentage=$(cat | tr -d '[:space:]' | sed 's/\..*//')

# Ensure the value is between 0 and 100
percentage=$(( percentage < 0 ? 0 : percentage ))
percentage=$(( percentage > 100 ? 100 : percentage ))

# Calculate number of keys to light (0-12)
num_keys=$(( (percentage * 12 + 50) / 100 ))  # Rounds to nearest integer

# Build the list of keys to light up
lit_keys=""
unlit_keys=""
for i in $(seq 1 12); do
    if [ $i -le $num_keys ]; then
        lit_keys="${lit_keys}f$i,"
    else
        unlit_keys="${unlit_keys}f$i,"
    fi
done

# Remove trailing commas
lit_keys=${lit_keys%,}
unlit_keys=${unlit_keys%,}

# Set lit keys to primary color
if [ -n "$lit_keys" ]; then
    setrgb "$lit_keys" "$primary"
fi

# Set unlit keys to primary_dim color
if [ -n "$unlit_keys" ]; then
    setrgb "$unlit_keys" "$primary_dim"
fi