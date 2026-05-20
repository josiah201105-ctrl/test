# GitHub Codespaces Setup Checklist

Use this checklist when creating a new Codespace for Windows + Roblox Studio development.

## Pre-Setup ✓

- [ ] Logged into GitHub
- [ ] Have Codespace quota hours available
- [ ] Have a GitHub account (not using SSO that blocks Codespaces)

## Creating the Codespace ✓

- [ ] Navigate to the repository
- [ ] Click **Code** button
- [ ] Click **Codespaces** tab
- [ ] Click **Create codespace on main**

## CRITICAL: Machine Type Selection ⚠️

- [ ] **Select 4-core machine type** (standardLinux4Core)
  - This is REQUIRED for adequate performance
  - 2-core will be too slow for Windows VM
  - Look for "4-core" or "4 CPU" in the machine options

## Waiting for Initialization ✓

- [ ] Container is building (progress in terminal)
- [ ] X11 display server starts
- [ ] VNC server initializes
- [ ] noVNC web interface starts
- [ ] Port 6080 is forwarded and accessible

## Accessing the Desktop ✓

- [ ] Click on port **6080** notification (labeled "noVNC Web")
- [ ] Browser opens to noVNC interface
- [ ] See Windows desktop loading
- [ ] Wait for Windows to fully boot (Desktop may be black for a few minutes)

## Installing Roblox Studio ✓

- [ ] Windows desktop is fully loaded
- [ ] Taskbar visible at bottom
- [ ] Click on **Microsoft Edge** icon or open from Start menu
- [ ] Navigate to: https://create.roblox.com/docs/studio/setting-up
- [ ] Click **Download Roblox Studio**
- [ ] Run installer (RobloxStudioLauncherBeta.exe)
- [ ] Follow the installation wizard
- [ ] Log in with Roblox account

## After Installation ✓

- [ ] Roblox Studio launches successfully
- [ ] Can create/open a project
- [ ] Can interact with the 3D viewport

## Troubleshooting Quick Fixes

If something isn't working:

1. **Port 6080 not available?**
   - Check the "Ports" tab in Codespaces
   - Verify port visibility is not set to "private"

2. **Desktop won't load?**
   - Wait longer (Windows takes time to boot)
   - Try refreshing noVNC page
   - Check terminal for error messages

3. **Roblox Studio won't install?**
   - Ensure internet connection works in Windows
   - Try alternative download method
   - Check Windows Defender isn't blocking installer

4. **Everything is very slow?**
   - Confirm you selected 4-core machine (MOST COMMON ISSUE)
   - Close background Windows applications
   - Reduce noVNC quality settings

## Important Reminders

- ⏱️ Codespaces have hourly usage limits (60 hours/month free)
- 🔒 Keep Codespace private
- 📦 Changes are persisted if you rebuild Codespace
- 🗑️ Unused Codespaces auto-delete after 30 days inactivity

## Useful Links

- GitHub Codespaces: https://github.com/codespaces
- Roblox Studio: https://create.roblox.com/
- Dev Container Spec: https://containers.dev/
- Windows Docker Image: https://github.com/dockur/windows
