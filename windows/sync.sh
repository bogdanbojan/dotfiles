#!/usr/bin/env bash
# sync.sh - Pull live Windows configs into this repo (run from WSL).
#
# The real config files live on the Windows side (/mnt/c/Users/<you>).
# This copies the current versions into windows/ so you can commit updates,
# and refreshes the scoop + pacman package lists.
#
# Usage:  ./windows/sync.sh
set -euo pipefail

WINHOME="${WINHOME:-/mnt/c/Users/$(whoami)}"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ ! -d "$WINHOME" ]; then
    echo "Windows home not found at: $WINHOME" >&2
    echo "Set WINHOME=/mnt/c/Users/<name> and retry." >&2
    exit 1
fi

echo ">> alacritty"
cp "$WINHOME/AppData/Roaming/alacritty/alacritty.toml" "$HERE/alacritty/alacritty.toml"
rm -rf "$HERE/alacritty/themes"
cp -r "$WINHOME/AppData/Roaming/alacritty/themes" "$HERE/alacritty/themes"

echo ">> komorebi"
cp "$WINHOME/komorebi.json"      "$HERE/komorebi/komorebi.json"
cp "$WINHOME/komorebi.bar.json"  "$HERE/komorebi/komorebi.bar.json"
cp "$WINHOME/applications.json"  "$HERE/komorebi/applications.json"

echo ">> whkd"
cp "$WINHOME/.config/whkdrc" "$HERE/whkd/whkdrc"

echo ">> scoop package list"
if scoop_out="$(powershell.exe -NoProfile -Command 'scoop export' 2>/dev/null)"; then
    printf '%s' "$scoop_out" | tr -d '\r' > "$HERE/packages/scoop-packages.json"
else
    echo "   (warning: 'scoop export' failed; left existing file untouched)" >&2
fi

echo ">> pacman package lists (Arch WSL)"
pacman -Qqe > "$HERE/packages/pacman-packages.txt"
pacman -Qqm > "$HERE/packages/pacman-foreign-packages.txt" || true

echo "Done. Review with: yadm diff (or git diff) and commit."
