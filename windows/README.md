# Windows dotfiles

Windows + WSL configuration, kept on the orphan `windows` branch of this yadm
repo (it shares no history with `main`, which holds the Linux/WSL dotfiles).

The live files live on the Windows side (`C:\Users\<you>\...`). Windows apps
do **not** follow WSL symlinks and alacritty uses absolute `C:\` paths, so this
branch uses **copy scripts** instead of symlinks.

## Layout

```
windows/
  alacritty/        alacritty.toml + themes/      -> %APPDATA%\alacritty\
  komorebi/         komorebi.json, komorebi.bar.json, applications.json  -> %USERPROFILE%\
  whkd/             whkdrc                         -> %USERPROFILE%\.config\
  packages/
    scoop-packages.json            scoop export (incl. Go-Mono-NF font)
    pacman-packages.txt            pacman -Qqe  (Arch WSL explicit)
    pacman-foreign-packages.txt    pacman -Qqm  (AUR/foreign)
  sync.sh           pull Windows -> repo (run in WSL, before committing)
  install.ps1       deploy repo -> Windows (run in PowerShell, new machine)
```

## Fonts

alacritty and kitty both use **Go Mono**, installed on Windows via scoop's
`nerd-fonts` bucket (`Go-Mono-NF`). Reinstall with `install.ps1 -Restore` or
`scoop import packages/scoop-packages.json`.

## Update the snapshot

```bash
yadm checkout windows   # only if you keep a separate worktree for this branch
./windows/sync.sh
# then commit the changes
```

## Deploy on a fresh machine

```powershell
# from PowerShell, in a checkout of this branch
pwsh -File .\windows\install.ps1 -Restore
```
