# Installing WSL and Docker on Windows

This guide provides step-by-step instructions to install WSL (Windows Subsystem for Linux) and Docker on a Windows machine using PowerShell.

## Prerequisites

Before you begin, ensure you have:
- Windows 10 or later (64-bit)
- PowerShell with administrative privileges

## Step 1: Enable WSL Feature

1. Open PowerShell as Administrator.
2. Run the following command to enable WSL:

```
dism.exe /online /enable-feature /featurename
/all /norestart
```


3. Restart your computer if prompted.

## Step 2: Install a Linux Distribution

1. Open the Microsoft Store.
2. Search for your preferred Linux distribution (e.g., Ubuntu, Debian).
3. Select and install it.

## Step 3: Set WSL Version

1. Open PowerShell as Administrator.
2. Run the following commands to set WSL to version 2:

```
wsl --set-default-version 2
```

Replace `<DistributionName>` with your Linux distribution name:

```
wsl --set-version <DistributionName> 2
```

## Step 4: Install Docker Desktop

1. Download Docker Desktop for Windows from [Docker Hub](https://hub.docker.com/).
2. Run the installer and follow the on-screen instructions.

## Step 5: Verify Installation

1. After installation, Docker Desktop should start automatically.
2. Open PowerShell or any terminal.
3. Check Docker version:

```
docker --version
```


You should see Docker version information if installed correctly.

## Troubleshooting

- For issues, refer to Docker and WSL documentation or community forums.

## Additional Resources

- [WSL Documentation](https://docs.microsoft.com/en-us/windows/wsl/)
- [Docker Documentation](https://docs.docker.com/)
