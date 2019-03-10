FROM mcr.microsoft.com/powershell

RUN apt update
RUN apt install python3-pip -y
