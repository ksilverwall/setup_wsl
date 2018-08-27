# How To Setup WSL

# 1. Setup Windows

Open cmd.exe with admin

```
## Enable WSL
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

## Install choco
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

## Install tools
choco install -y lxrunoffline
```

Non-admin

```
## Install Ubuntu
lxrun /install /y
```

# 2. Setup Ubuntu

```
bash setup.sh
```
