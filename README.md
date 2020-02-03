These files provide a Docker based development environment for ndp.

## Usage

To use these files, follow these steps:

### One-time setup:
1. Download and install Docker Desktop. After installation, don't login to the desktop app on your computer. If you are already logged in, log out.
1. Create a directory called /opt/cmad with sudo and chown it to your ID and group. Don't run any other commands in this readme with sudo.
1. Open Docker Desktop -> Preferences -> File Sharing and add /opt/cmad to the list of host directories that can be mounted into containers.
1. Open Docker Desktop -> Preferences -> Advanced and set the limits to a good value, eg: CPUs: 6, Memory: 6GB
1. cd to the directory where this README.md exists and run build-all.sh from there

### Running:
1. To start the infra services (kafka, redis etc) - Go to the 'compose' sub-directory and run ./start.sh there.
1. To run ndp services - Go to the 'appctl' sub-directory and run ./run.sh there. It will take you into a container in which you can start whatever services you want with appctl and use the ndp cli as well.


