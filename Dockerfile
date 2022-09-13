FROM kalilinux/kali-rolling
# --cap-add=SYS_PTRACE --security-opt seccomp=unconfined

WORKDIR /home

# SHELL ["/bin/bash", "-c"]

# basic, languages, web, steg, password, pentesting misc 
#kali-linux-headless metasploit-framework
RUN apt -y update && DEBIAN_FRONTEND=noninteractive && apt -y autoremove && apt clean && apt -y install zsh zoxide \
  git curl wget neovim bash-completion file \
  build-essential gcc gdb python-is-python3 python3-pip jq \
  ltrace strace net-tools nmap netcat-openbsd dirb wpscan dnschef fping recon-ng tcpdump gobuster \
  binwalk  \
  hash-identifier hashcat wordlists john hashcat \
  burpsuite crackmapexec \
  radare2 \
  mimikatz aircrack-ng hydra responder sqlmap metasploit-framework

# RUN pip install pwntools

# RUN git clone https://github.com/radareorg/radare2 && cd radare2 && sys/install.sh

CMD ["/bin/zsh"]
