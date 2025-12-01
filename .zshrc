
# Silence old bash deprecation warning on macOS
export BASH_SILENCE_DEPRECATION_WARNING=1

# --- On-demand conda / jupyter-2025 setup (no heavy init on startup) ---

# Alias to quickly activate your jupyter-2025 env
if [ -f "/opt/miniconda3/bin/activate" ]; then
    alias jupyter-init='source /opt/miniconda3/bin/activate jupyter-2025'
fi

# If you ever need full `conda` functionality in a shell, run:
#   conda-init
# and then you can use `conda activate ...` as usual.
if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
    alias conda-init='source /opt/miniconda3/etc/profile.d/conda.sh'
fi

export PATH=~/GitHub/bin:/Applications/RStudio.app/Contents/Resources/app/quarto/bin/:$PATH

[ -f ~/Github/dotfiles/zshrc_shared ] && source ~/Github/dotfiles/zshrc_shared

