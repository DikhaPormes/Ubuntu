#!/data/data/com.termux/files/usr/bin/bash
# Script Otomatis Install Ubuntu di Termux
# By Sayangmu ❤️

set -e

# Update & upgrade
pkg update -y && pkg upgrade -y

# Install paket pendukung
pkg install -y wget proot tar proot-distro

# Install Ubuntu pakai proot-distro
proot-distro install ubuntu

# Buat launcher
cat > $PREFIX/bin/start-ubuntu <<- EOM
#!/data/data/com.termux/files/usr/bin/bash
proot-distro login ubuntu
EOM

chmod +x $PREFIX/bin/start-ubuntu

echo "✅ Ubuntu berhasil dipasang di Termux!"
echo "➡️ Ketik: start-ubuntu untuk masuk"
