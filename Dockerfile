FROM mcr.microsoft.com/powershell

RUN apt update

RUN apt install wget -y

RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb && \
    sudo dpkg -i packages-microsoft-prod.deb

RUN add-apt-repository universe
RUN apt update
RUN apt install apt-transport-https -y 
RUN apt install python3-pip -y         
RUN apt install dotnet-sdk-2.1 -y

