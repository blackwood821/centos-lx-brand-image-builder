# OUEL lx-brand Image Builder

This is a collection of scripts used for creating an LX-brand OUEL image.

## Requirements

In order to use these scripts you'll need:

- A OUEL running in a KVM virtual machine or bare metal (required for the `install` script) with git installed. Running `install` in a CentOs lx-brand zone is not supported. The major version of the OUEL machine you use to run the `install` script must be the same as the version you intend to install in the chroot directory (e.g., if you want to install OUEL 7, your host machine should also be OUEL 7)
- A SmartOS (or SDC headnode) install (required for the `create-lx-image` script)

## Usage

### Create a OUEL install tarball via the `install` script

On a OUEL 7.X machine, do the following:

1. Clone this repo branch to your OUEL machine: `git clone --single-branch -b ouel-lx-brand-image-builder https://github.com/blackwood821/rhel-lx-brand-image-builder.git ouel-lx-brand-image-builder`
2. Change to the repo directoru: `cd ouel-lx-brand-image-builder`
3. Run `./install -d <chroot> -r <release rpm> -i <image name> -p <proper name> -D <image desc>` to install OUEL 7.X in a given directory. This will create a tarball of the installation in your working directory (named `<image name>-$YYMMDD.tar.gz`). See ./install -h for detailed usage.

### Create an lx brand image with the `create-lx-image` script

On a SmartOS in the global zone.

1. Clone this repo (if you have git installed) or download and upack it
2. Copy the tarball you created above to your SmartOS machine or SDC headnode and run `./create-lx-image -t <tarball> -k <kernel version> -m <min platform> -i <image name> -d <desc>`. This will create the image file and manifest.
