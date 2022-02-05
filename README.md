# installer
curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/repo-fix.sh > repo.sh && chmod +x repo.sh && bash repo.sh && pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu/ubuntu.sh -O ubuntu.sh && chmod +x ubuntu.sh && bash ubuntu.sh && bash start-ubuntu.sh
# Install GCC
apt update
apt install wget
wget https://raw.githubusercontent.com/R1punk/installer/main/gcc.sh && bash gcc.sh
