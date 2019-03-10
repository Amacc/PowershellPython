FROM mcr.microsoft.com/powershell


RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb && \
    sudo dpkg -i packages-microsoft-prod.deb

RUN add-apt-repository universe         && \
    apt update                          && \
    apt install apt-transport-https -y  && \
    apt install python3-pip -y          && \
    apt install dotnet-sdk-2.1 -y

