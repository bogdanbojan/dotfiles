# Find the lightline colorscheme directory in lazy.nvim
LIGHTLINE_DIR=$(find ~/.local/share/nvim/lazy -name "lightline.vim" -type d)
COLORSCHEME_DIR="$LIGHTLINE_DIR/autoload/lightline/colorscheme"

# Make sure the directory exists
if [ -d "$COLORSCHEME_DIR" ]; then
    # Create symlinks for each of your custom colorschemes
    for scheme in lightline/colorscheme/*.vim; do
        ln -sf "$(pwd)/$scheme" "$COLORSCHEME_DIR/$(basename $scheme)"
        echo "Created symlink for $(basename $scheme)"
    done
    echo "All symlinks created successfully!"
else
    echo "Lightline colorscheme directory not found at $COLORSCHEME_DIR"
fi
