#!/bin/bash
# Startup script for Windows container with Roblox Studio

set -e

echo "=========================================="
echo "Windows VM Initialization Script"
echo "=========================================="

# Wait for Windows to boot
echo "[*] Waiting for Windows to initialize..."
sleep 30

# Check if display is available
if [ -S /tmp/.X11-unix/0 ]; then
    echo "[✓] X11 display server detected"
else
    echo "[!] Waiting for X11 display server..."
    for i in {1..60}; do
        if [ -S /tmp/.X11-unix/0 ]; then
            echo "[✓] X11 display server ready"
            break
        fi
        sleep 2
    done
fi

# Verify VNC server
echo "[*] Checking VNC server..."
if netstat -ln | grep -q :5900; then
    echo "[✓] VNC server is running on port 5900"
else
    echo "[!] VNC server not detected yet"
fi

# Check noVNC
if netstat -ln | grep -q :6080; then
    echo "[✓] noVNC web interface is running on port 6080"
else
    echo "[!] noVNC not ready yet"
fi

echo ""
echo "=========================================="
echo "Container Initialization Complete!"
echo "=========================================="
echo ""
echo "Access your Windows desktop via:"
echo "  → Browser: http://localhost:6080"
echo "  → VNC Client: localhost:5900"
echo ""
echo "Next steps:"
echo "1. Open the noVNC link in your browser"
echo "2. Wait for Windows desktop to fully load"
echo "3. Open Microsoft Edge"
echo "4. Download Roblox Studio from:"
echo "   https://create.roblox.com/docs/studio/setting-up"
echo ""
echo "=========================================="

# Keep container running
tail -f /dev/null
