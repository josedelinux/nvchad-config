# My NvChad configuration

# installation

Make sure gcc, make, nerdfont, latest nodejs is installed

```bash
# clone starter
git clone git@github.com:josedelinux/nvchad-config.git ~/.config/nvim

# start nvim
nvim

# Run :MasonInstallAll command after lazy.nvim finishes downloading plugins.

# update run `Lazy sync` command
```

## nodejs setup with fnm
ref:
https://nodejs.org/en/download/package-manager
```bash
# installs fnm (Fast Node Manager)
curl -fsSL https://fnm.vercel.app/install | bash

# download and install Node.js
fnm use --install-if-missing 20

# verifies the right Node.js version is in the environment
node -v # should print `v20.14.0`

# verifies the right NPM version is in the environment
npm -v # should print `10.7.0`
```
