# Launch VNC viewer within Gitpod
cd "${GITPOD_REPO_ROOT}"
if [ ! -d "${GITPOD_REPO_ROOT}/noVNC-1.4.0" ]; then
    wget https://github.com/novnc/noVNC/archive/refs/tags/v1.4.0.zip
    unzip v1.4.0.zip
fi
nohup ./noVNC-1.4.0/utils/novnc_proxy --vnc localhost:5900 &
gp ports await 6080 && gp preview $(gp url 6080)"/vnc.html"