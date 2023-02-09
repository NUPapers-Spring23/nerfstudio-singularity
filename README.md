# Nerf Studio Singularity Containter and Pipeline

This repository contains the [Singularity file definitions](https://docs.sylabs.io/guides/3.8/user-guide/definition_files.html) and all supporting scripts to build a NeRF rendering pipeline on [Compute Canada](https://docs.alliancecan.ca/wiki/Technical_documentation), leveraging Singularity [containers](https://docs.sylabs.io/guides/3.8/user-guide/index.html).

The goal is to provide an isolated environment that you can use Nerfstudio to render NeRF's from images. Nerfstudio will also allow you to render point-clouds and videos from the trained and rendered NeRF's.

## Getting Started

There's an already built Singularity container stored in the Cedar and Graham clusters, on Compute Canada. The container can also be found on Northeastern University Discovery cluster. This way you can skip building the image yourself. However, if you want to customize the image, check the [Building the image](#building-the-image) section.

The containers can be found at:
* Compute Canada: `/home/wribas/projects/def-ycoady/wribas/nerfstudio`
* Northeastern Discovery: `/scratch/ribas.w/nerfstudio`

Those directories have the permissions set in a way you can read the container file and possibly run it. However, if you want to write data files or outputs for NeRF rendering, I'd suggest you copy the container file to your own folder.

### Gotchas and other things you should be aware of

* When trying to run nerfstudio you get stuck in the download of the Pytorch model. Like this:
    ```txt
    Downloading https://download.pytorch.org/models/alexnet-owt-7be5be79.pt to /home/wribas/.cache/torch/hub/checkpoints/alexnet-owt-7be5be79.pth
    ```
    This might happen because the running container is failing to perform the TLS handshake with the download URL, or it's failing to write the file to disk. To work around this, you can manually download the `alexnet-owt-7be5be79.pth` and feed the cache yourself. Just run this on your local machine (you may need to create the .cache folder manually too):

    ```bash
    wget https://download.pytorch.org/models/alexnet-owt-7be5be79.pth
    scp alexnet-owt-7be5be79.pth wribas@graham.computecanada.ca:/home/wribas/.cache/torch/hub/checkpoints/alexnet-owt-7be5be79.pth
    ```

* GPU version: if you get an error like the one below this might mean on of two things. Either you're running nerfstudio on a GPU that's not compatible with the `tiny-cuda-nn` version we use OR that the CUDA drivers available are too old (< 11.3) or the drivers version mismatch with what the GPU is using. To solve this, try to use the Nvidia T4 GPU or a newer version. We have tested many GPU's (e.g. p100, p100l, v100) and just got Nvidia T4 to work on Compute Canada.

    ```txt
    OSError: Could not find compatible tinycudann extension for compute capability 35.

    /opt/nerfstudio-nu-papers/venv/lib/python3.8/site-packages/torch/cuda/__init__.py:123: UserWarning:
        Found GPU0 Tesla K40m which is of cuda capability 3.5.
        PyTorch no longer supports this GPU because it is too old.
        The minimum cuda capability supported by this library is 3.7.

    warnings.warn(old_gpu_warn % (d, name, major, minor, min_arch // 10, min_arch % 10))
    Traceback (most recent call last):
    File "/opt/nerfstudio-nu-papers/venv/bin/ns-train", line 5, in <module>
        from scripts.train import entrypoint
    File "/opt/nerfstudio-nu-papers/venv/lib/python3.8/site-packages/scripts/train.py", line 49, in <module>
        from nerfstudio.configs.method_configs import AnnotatedBaseConfigUnion
    File "/opt/nerfstudio-nu-papers/venv/lib/python3.8/site-packages/nerfstudio/configs/method_configs.py", line 47, in <module>
        from nerfstudio.field_components.temporal_distortions import TemporalDistortionKind
    File "/opt/nerfstudio-nu-papers/venv/lib/python3.8/site-packages/nerfstudio/field_components/__init__.py", line 17, in <module>
        from .encodings import Encoding, ScalingAndOffset
    File "/opt/nerfstudio-nu-papers/venv/lib/python3.8/site-packages/nerfstudio/field_components/encodings.py", line 34, in <module>
        import tinycudann as tcnn
    File "/opt/nerfstudio-nu-papers/venv/lib/python3.8/site-packages/tinycudann/__init__.py", line 9, in <module>
        from tinycudann.modules import free_temporary_memory, NetworkWithInputEncoding, Network, Encoding
    File "/opt/nerfstudio-nu-papers/venv/lib/python3.8/site-packages/tinycudann/modules.py", line 58, in <module>
        raise EnvironmentError(f"Could not find compatible tinycudann extension for compute capability {system_compute_capability}.")
    OSError: Could not find compatible tinycudann extension for compute capability 35.
    ```

### Running the nerfstudio container on Compute Canada

SSH into the Graham cluster and start an interactive job. An example of the `salloc` command is given below. You may tweak the amount of resources for the job depending of the size of the project you'll be rendering.

```bash
salloc --time=1:0:0 --cpus-per-task=4 --mem=12G --gpus-per-node=t4:1 --account=<replace_me>
```

As mentioned in the [gotchas](#gotchas-and-other-things-you-should-be-aware-of), the type of NVIDIA GPU to use is very important. Make sure you're using the most recent GPU possible, as it will provide the right compute capability for `tiny-cuda-nn`. For Compute Canada, we've tested nerfstudio with T4 GPU's.

Once you get the job allocation granted, navigate to the directory where the nerfstudio container is located at. Then run:

```bash
# The data directory is where you should put the images/videos/artifacts you want nerfstudio to use
mkdir data

# The outputs directory is where nerfstudio will write the result of the renderings
mkdir outputs

# Notice that we're binding `data` and `outputs` to the container
singularity run --nv --bind data/:/opt/nerfstudio-nu-papers/data --bind outputs/:/opt/nerfstudio-nu-papers/outputs nerfstudio-cuda-11-3.sif
```

You should now be presented with a bash terminal where you can run the nerfstudio CLI commands. More about nerfstudio [here](https://docs.nerf.studio/en/latest/quickstart/first_nerf.html).

### Running the nerfstudio container on Northeastern Dicovery

SSH into the Discovery cluster and start an interactive job. An example of the `srun` command is given below. You may tweak the amount of resources for the job depending of the size of the project you'll be rendering.

```bash
srun --partition=gpu --nodes=1 --pty --gres=gpu:t4:1 --ntasks=2 --mem=4GB --time=01:00:00 /bin/bash
```

As mentioned in the [gotchas](#gotchas-and-other-things-you-should-be-aware-of), the type of NVIDIA GPU to use is very important. Make sure you're using the most recent GPU possible, as it will provide the right compute capability for `tiny-cuda-nn`. For Discovery, we've tested nerfstudio with T4 GPU's.

Once you get the job allocation granted, navigate to the directory where the nerfstudio container is located at. Then run:

```bash
# The data directory is where you should put the images/videos/artifacts you want nerfstudio to use
mkdir data

# The outputs directory is where nerfstudio will write the result of the renderings
mkdir outputs

# Notice that we're binding `data` and `outputs` to the container
singularity run --nv --bind data/:/opt/nerfstudio-nu-papers/data --bind outputs/:/opt/nerfstudio-nu-papers/outputs nerfstudio-cuda-11-3.sif
```

### Building the image

In order to build nerfstudio in a Singularity container you'll need:
- [CUDA](https://docs.nvidia.com/cuda/cuda-installation-guide-microsoft-windows/contents.html) and Nvidia drivers installed on the host machine. For consequence, you're also required to have a Nvidia GPU on the host machine, otherwise you won't be able to install the drivers.
- A fairly recent Nvidia GPU, that supports at least the Turing architecture or more recent. For context, we've successfully built the container using an RTX 2060.
- Singularity installed on the host machined. Instructions [here](https://docs.sylabs.io/guides/3.8/user-guide/introduction.html). We've tested and validated the definition file with Singularity version 3.8.4.

If you need to build the nerfstudio image from scratch, you can use the command below:

```bash
sudo singularity build --nv nerfstudio-cuda-11-3.sif nerfstudio.def
```

It's mandatory you run this command as `sudo`, in a computer you have privileged access. Especially when you're going to run the container on Compute Canada, where you don't have `sudo` access. If you don't use `sudo` during the build, your container won't work properly, or may not even build.

The resulting image will have some gigabytes of size. You may transfer this image to Compute Canada or Discovery using the `scp` command. Be aware it may take a while for the transfer to complete depending on your internet connection.

## Credits

Authored by Weder Ribas <me@wederribas.com>
