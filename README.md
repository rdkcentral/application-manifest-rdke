# rdke-application-manifest-generic
Manifest to build RDKE application layer for RDK platforms

## Build Steps
Note: use `main` or `develop` branch.
```bash
# Initialize the repository
repo init -u git@github.com:rdkcentral/rdke-application-manifest-generic -m raspberrypi4-64.xml -b develop
or
repo init -u https://github.com/rdkcentral/rdke-application-manifest-generic.git -m raspberrypi4-64.xml -b develop

# Synchronize the repository
repo sync --no-clone-bundle --no-tags

# Build the project
MACHINE=raspberrypi4-64-rdke source ./scripts/setup-environment
bitbake lib32-application-test-image
```