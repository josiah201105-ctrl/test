# GitHub Codespaces Setup for Windows & Roblox Studio

This directory contains dev container configuration for running a Windows virtual machine with Roblox Studio in GitHub Codespaces.

## Prerequisites

- GitHub account (logged in)
- Access to create GitHub Codespaces

## Setup Instructions

### Step 1: Create GitHub Codespace
1. Go to your repository on GitHub
2. Click the green **Code** button
3. Select the **Codespaces** tab
4. Click **Create codespace on main**

### Step 2: Machine Configuration (IMPORTANT)
When creating the Codespace, you'll see machine type options:
- **Select 4-core machine** (or higher if available)
  - This gives you ~8GB RAM which is needed for Windows VM
  - The configuration is set to use `standardLinux4Core`

### Step 3: Wait for Container Initialization
- The container will take 5-10 minutes to fully initialize
- You'll see the VNC desktop environment starting up
- Watch the logs in the terminal for confirmation

### Step 4: Access the Virtual Desktop

**Option A: Using noVNC (Recommended - Browser-based)**
1. Once initialized, a port notification will appear
2. Click on port **6080** labeled "noVNC Web"
3. Your browser will open the noVNC web interface
4. You'll see the Windows desktop

**Option B: Using VNC Viewer (Native Client)**
1. Download a VNC viewer app (e.g., RealVNC, TightVNC)
2. Connect to `localhost:5900`
3. Use the credentials from the container

### Step 5: Download Roblox Studio
Inside the Windows desktop:
1. Open **Microsoft Edge** (pre-installed)
2. Go to https://create.roblox.com/docs/studio/setting-up
3. Click **Download Roblox Studio**
4. Run the installer and follow the setup wizard
5. Log in with your Roblox account

## Port Mappings

| Port | Service | Purpose |
|------|---------|---------|
| 5900 | VNC | Direct VNC protocol connection |
| 6080 | noVNC | Web-based VNC viewer |
| 8006 | Custom | Reserved for additional services |

## Performance Notes

- **CPU**: 4 cores allocated
- **RAM**: 8GB allocated for optimal performance
- **Disk**: Mounted volume for persistence
- **Resolution**: 1920x1080 (adjustable via env vars)
- **VRAM**: 2048MB (virtual)

## Troubleshooting

### Container won't start
- Check that 4-core machine type was selected
- Verify you have sufficient Codespace hours remaining
- Check container logs in the terminal

### Can't connect to desktop
- Ensure ports are forwarded (check Ports tab in Codespaces)
- Try refreshing the noVNC page
- Check if display service is running

### Performance issues
- Confirm 4-core machine was used (not 2-core)
- Close unnecessary applications in Windows
- Reduce resolution if needed via RESOLUTION env var

### Roblox Studio won't install
- Ensure Windows is fully booted (wait for desktop to appear)
- Check internet connectivity in the container
- Try downloading directly or using alternative link

## Environment Variables

In `devcontainer.json`, you can modify:
- `DISPLAY=:1` - X11 display server
- `RESOLUTION=1920x1080` - Desktop resolution
- `VRAM=2048` - Virtual GPU memory

## Security Considerations

⚠️ **Important**: This setup:
- Uses privileged mode for better compatibility
- Exposes ports to the internet via Codespaces
- Is intended for development only
- May violate terms of service if used for production Windows workloads

Keep your Codespace private and only use for legitimate development purposes.

## File Structure

```
.devcontainer/
├── devcontainer.json       # Main dev container config
├── Dockerfile              # Container build instructions
├── docker-compose.yml      # Multi-container orchestration
└── README.md              # This file
```

## Additional Resources

- [Dev Containers Documentation](https://containers.dev/)
- [GitHub Codespaces Docs](https://docs.github.com/en/codespaces)
- [dockur/windows Repository](https://github.com/dockur/windows)
- [Roblox Studio Installation](https://create.roblox.com/docs/studio/setting-up)
