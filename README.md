gnuradio-companion-on-docker-for-mac
====================================

Unstable, unsafe & mac only

# Install
1. Install [Docker for Mac](https://docs.docker.com/docker-for-mac/) and [XQuartz](https://www.xquartz.org/)
2. `git clone https://github.com/ddm/gnuradio-companion-on-docker-for-mac.git && cd gnuradio-companion-on-docker-for-mac`
3. Allow `gnuradio-companion-on-docker-for-mac` to be mounted into containers

# GNURadio Companion
`/opt/X11/bin/xterm -e $(pwd)/launch.sh gnuradio-companion`

# Standalone flow
`/opt/X11/bin/xterm -e $(pwd)/launch.sh "/flows/top_block.py"`
