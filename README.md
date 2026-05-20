# Test - Windows Roblox Studio Development Environment

This repository contains a GitHub Codespaces configuration for running Windows with Roblox Studio in a browser-accessible virtual machine.

## Quick Start

### Prerequisites
- GitHub account (logged in)
- Adequate Codespace quota hours

### Steps to Get Started

1. **Create a Codespace**
   - Click `Code` → `Codespaces` → `Create codespace on main`
   - ⚠️ **IMPORTANT**: Select a **4-core machine type** for optimal performance

2. **Wait for Initialization**
   - The container will take 5-10 minutes to fully initialize
   - Monitor the terminal for readiness confirmation

3. **Access the Desktop**
   - When ready, click on the port `6080` notification (noVNC Web)
   - This opens the Windows desktop in your browser

4. **Install Roblox Studio**
   - Open Microsoft Edge in the Windows desktop
   - Download from: https://create.roblox.com/docs/studio/setting-up
   - Run the installer and complete setup

## Architecture

- **Base Image**: `dockur/windows:latest` - Full Windows VM in Docker
- **Machine Type**: 4-core (8GB RAM)
- **Display**: noVNC web interface on port 6080
- **VNC Access**: Direct VNC on port 5900

## Configuration Files

All dev container configuration is in the `.devcontainer/` directory:
- `devcontainer.json` - Main configuration
- `Dockerfile` - Container build setup
- `docker-compose.yml` - Service orchestration
- `README.md` - Detailed setup guide

## Important Notes

⚠️ **Machine Type Selection**: You MUST select a 4-core machine when creating the Codespace. A 2-core machine will not have sufficient resources.

⚠️ **Terms of Service**: Running Windows in Codespaces may violate GitHub's terms of service. Use for legitimate development only.

## Troubleshooting

See `.devcontainer/README.md` for detailed troubleshooting and performance tips.

## Resources

- [Dev Container Setup Guide](./.devcontainer/README.md)
- [Roblox Studio Docs](https://create.roblox.com/docs/)
- [GitHub Codespaces Documentation](https://docs.github.com/en/codespaces)
