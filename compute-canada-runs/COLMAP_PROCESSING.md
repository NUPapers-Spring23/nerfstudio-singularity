# COLMAP Processing on Compute Canada

This file contains the logs and batch job stats for the COLMAP processing done on Compute Canada using nerfstudio COLMAP pipeline.

Each section is titled by the folder name where the images originated from.

## /scratch/derekja/ECS/DJI_202301291342_001_uvicmapper/

* Log file: /scratch/wribas/nerfstudio/nerfstudio_colmap_59489344.out
* Nerfstudio logs:
    ```bash
    [01:10:00] 🎉 Done copying images.                                                             process_data_utils.py:179
    [01:26:33] 🎉 Done downscaling images.                                                         process_data_utils.py:292
    [01:35:13] 🎉 Done extracting COLMAP features.                                                       colmap_utils.py:536
    [10:36:16] 🎉 Done matching COLMAP features.                                                         colmap_utils.py:550
    [10:58:34] 🎉 Done COLMAP bundle adjustment.                                                         colmap_utils.py:572
    [10:59:52] 🎉 Done refining intrinsics.                                                              colmap_utils.py:581
    ────────────────────────────────────────────── 🎉 🎉 🎉 All DONE 🎉 🎉 🎉 ──────────────────────────────────────────────
                                                    Starting with 189 images
                                        We downsampled the images by 2x, 4x and 8x
                                                Colmap matched 188 images
                                        COLMAP found poses for 99.47% of the images.
    ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
    ```
* Job stats:
    ```txt
    Job ID: 59489344
    Cluster: cedar
    User/Group: wribas/wribas
    State: COMPLETED (exit code 0)
    Nodes: 1
    Cores per node: 32
    CPU Utilized: 9-01:13:10
    CPU Efficiency: 67.54% of 13-09:37:36 core-walltime
    Job Wall-clock time: 10:03:03
    Memory Utilized: 24.26 GB
    Memory Efficiency: 37.91% of 64.00 GB
    ```

## /scratch/derekja/ECS/DJI_202301291342_002_uvicmapper/

* Log file: nerfstudio_colmap_59595362.out
* Nerfstudio logs:
    ```bash
    [00:13:15] 🎉 Done copying images.                                                             process_data_utils.py:179
    [00:23:56] 🎉 Done downscaling images.                                                         process_data_utils.py:292
    [00:32:38] 🎉 Done extracting COLMAP features.                                                       colmap_utils.py:536
    [12:32:26] 🎉 Done matching COLMAP features.                                                         colmap_utils.py:550
    [12:58:52] 🎉 Done COLMAP bundle adjustment.                                                         colmap_utils.py:572
    [13:00:31] 🎉 Done refining intrinsics.                                                              colmap_utils.py:581
    ────────────────────────────────────────────── 🎉 🎉 🎉 All DONE 🎉 🎉 🎉 ──────────────────────────────────────────────
                                                    Starting with 236 images
                                        We downsampled the images by 2x, 4x and 8x
                                                Colmap matched 235 images
                                        COLMAP found poses for 99.58% of the images.
    ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
    ```
* Job stats:
    ```txt
    Job ID: 59595362
    Cluster: cedar
    User/Group: wribas/wribas
    State: COMPLETED (exit code 0)
    Nodes: 1
    Cores per node: 32
    CPU Utilized: 12-08:39:35
    CPU Efficiency: 72.12% of 17-03:20:32 core-walltime
    Job Wall-clock time: 12:51:16
    Memory Utilized: 26.94 GB
    Memory Efficiency: 42.09% of 64.00 GB
    ```

## /scratch/derekja/ECS/DJI_202301291342_003_Extra_obliques_and_UVIC_footage

* Log file: nerfstudio_colmap_59696099.out
* Nerfstudio logs:
    ```bash
    [19:46:43] 🎉 Done copying images.                                                             process_data_utils.py:179
    [19:50:18] 🎉 Done downscaling images.                                                         process_data_utils.py:292
    [19:53:25] 🎉 Done extracting COLMAP features.                                                       colmap_utils.py:536
    [22:44:32] 🎉 Done matching COLMAP features.                                                         colmap_utils.py:550
    [22:51:03] 🎉 Done COLMAP bundle adjustment.                                                         colmap_utils.py:572
    [22:51:20] 🎉 Done refining intrinsics.                                                              colmap_utils.py:581
    ────────────────────────────────────────────── 🎉 🎉 🎉 All DONE 🎉 🎉 🎉 ──────────────────────────────────────────────
                                                    Starting with 86 images
                                        We downsampled the images by 2x, 4x and 8x
                                                    Colmap matched 85 images
                                        COLMAP found poses for 98.84% of the images.
    ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
    ```
* Job stats:
    ```txt
    Job ID: 59696099
    Cluster: cedar
    User/Group: wribas/wribas
    State: COMPLETED (exit code 0)
    Nodes: 1
    Cores per node: 32
    CPU Utilized: 2-16:19:01
    CPU Efficiency: 64.62% of 4-03:31:44 core-walltime
    Job Wall-clock time: 03:06:37
    Memory Utilized: 19.29 GB
    Memory Efficiency: 30.13% of 64.00 GB
    ```

## /scratch/derekja/ECS/DJI_202301291342_004_uvicOblique/

* Log file: nerfstudio_colmap_59702654.out
* Nerfstudio logs:
    ```bash
    [22:02:47] 🎉 Done copying images.                                                             process_data_utils.py:179
    [22:17:02] 🎉 Done downscaling images.                                                         process_data_utils.py:292
    [22:28:47] 🎉 Done extracting COLMAP features.                                                       colmap_utils.py:536
    [11:43:58] 🎉 Done matching COLMAP features.                                                         colmap_utils.py:550
    [12:11:35] 🎉 Done COLMAP bundle adjustment.                                                         colmap_utils.py:572
    [12:13:19] 🎉 Done refining intrinsics.                                                              colmap_utils.py:581
    ────────────────────────────────────────────── 🎉 🎉 🎉 All DONE 🎉 🎉 🎉 ──────────────────────────────────────────────
                                                    Starting with 314 images
                                           We downsampled the images by 2x, 4x and 8x
                                                   Colmap matched 314 images
                                          COLMAP found poses for all images, CONGRATS!
    ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
    ```
* Job stats:
    ```txt
    Job ID: 59702654
    Cluster: cedar
    User/Group: wribas/wribas
    State: COMPLETED (exit code 0)
    Nodes: 1
    Cores per node: 48
    CPU Utilized: 17-20:12:34
    CPU Efficiency: 62.48% of 28-13:22:24 core-walltime
    Job Wall-clock time: 14:16:43
    Memory Utilized: 28.39 GB
    Memory Efficiency: 44.36% of 64.00 GB
    ```

## /scratch/derekja/ECS/DJI_202301291342_00_Buildings_up_close/

* Log file: nerfstudio_colmap_59695702.out
* Nerfstudio logs:
    ```bash
    [19:38:03] 🎉 Done copying images.                                                             process_data_utils.py:179
    [19:38:48] 🎉 Done downscaling images.                                                         process_data_utils.py:292
    [19:39:37] 🎉 Done extracting COLMAP features.                                                       colmap_utils.py:536
    [20:06:15] 🎉 Done matching COLMAP features.                                                         colmap_utils.py:550
    [20:07:15] 🎉 Done COLMAP bundle adjustment.                                                         colmap_utils.py:572
    [20:07:19] 🎉 Done refining intrinsics.                                                              colmap_utils.py:581
    ────────────────────────────────────────────── 🎉 🎉 🎉 All DONE 🎉 🎉 🎉 ──────────────────────────────────────────────
                                                    Starting with 21 images
                                        We downsampled the images by 2x, 4x and 8x
                                                    Colmap matched 20 images
                                        COLMAP found poses for 95.24% of the images.
    ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
    ```
* Job stats:
    ```txt
    Job ID: 59695702
    Cluster: cedar
    User/Group: wribas/wribas
    State: COMPLETED (exit code 0)
    Nodes: 1
    Cores per node: 32
    CPU Utilized: 04:04:52
    CPU Efficiency: 25.41% of 16:03:44 core-walltime
    Job Wall-clock time: 00:30:07
    Memory Utilized: 6.54 GB
    Memory Efficiency: 10.22% of 64.00 GB
    ```
