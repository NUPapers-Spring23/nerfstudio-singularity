# Nerf Studio Singularity Containter and Pipeline

This repository contains the [Singularity file definitions](https://docs.sylabs.io/guides/3.8/user-guide/definition_files.html) and all supporting scripts to build a NeRF rendering pipeline on [Compute Canada](https://docs.alliancecan.ca/wiki/Technical_documentation), leveraging Singularity [containers](https://docs.sylabs.io/guides/3.8/user-guide/index.html).

The goal is to provide an isolated environment that you can use Nerfstudio to render NeRF's from images. Nerfstudio will also allow you to render point-clouds and videos from the trained and rendered NeRF's.

## Getting Started

There's an already built Singularity container stored in the Cedar cluster. This way you can skip building the image yourself. However, if you want to customize the image, check the [Building the image](#building-the-image) section.

The pre-built image is located at: `/project/6002421/wribas`. The image file is named `nerfstudio.sif`.

### Running the nerfstudio.sif container on Compute Canada

#TODO

### Building the image

#TODO

## Credits

Authored by Weder Ribas <me@wederribas.com>
