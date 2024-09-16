packages=('mauiman' 'mauikit')
cd maui
for package in "${packages[@]}"; do
    cd "$package"
    makepkg -f
    ls
    cd ..
done