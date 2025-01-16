# rdke-application-manifest-generic
Manifest to build RDKE application layer for RDK platforms

## Build Steps
Note: use latest `TAG` for released versions or `develop` branch for develop HEAD.
```bash
# Initialize the repository
repo init -u https://github.com/rdkcentral/application-manifest-rdke.git -m raspberrypi4-64.xml -b develop

# Synchronize the repository
repo sync --no-clone-bundle --no-tags

# Build the project
MACHINE=raspberrypi4-64-rdke source ./scripts/setup-environment
bitbake lib32-application-test-image
```
