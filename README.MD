# Installing WSL and Docker on Windows

This guide outlines the steps to install Windows Subsystem for Linux (WSL) and Docker on a Windows machine using PowerShell.

## Prerequisites

- Windows 10 (64-bit) or higher
- System supports Hyper-V virtualization

## Steps

powershell
# Step 1: Enable WSL Feature
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Step 2: Enable Virtual Machine Feature
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Step 3: Install WSL 2
# Download and install WSL 2 Linux kernel update package from Microsoft's GitHub releases page

# Set WSL 2 as the default version
wsl --set-default-version 2
# Step 4: Install a Linux Distribution
# Install your preferred Linux distribution from Microsoft Store

# Step 5: Install Docker Desktop
# Download Docker Desktop for Windows from Docker Hub
# Run the installer and follow on-screen instructions

# Step 6: Verify Installation
# Verify WSL installation
wsl --list --verbose

# Verify Docker installation
docker --version
docker run hello-world

This format keeps all the instructions within a single code block, suitable for direct copying into your `README.md` file on GitHub. Adjustments can be made based on specific requirements or preferences.
