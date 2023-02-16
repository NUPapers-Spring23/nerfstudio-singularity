# NeRF Model Training on Compute Canada

This file contains the logs and batch job stats for the NeRF model training on Compute Canada using nerfstudio.

Each section is titled by the folder name where the trained model is stored at.

## /scratch/wribas/nerfstudio/uvic-data/DJI_202301291342_001_uvicmapper/outputs/

* Log file: /scratch/wribas/nerfstudio/nerfstudio_train_model_3636336.out
* Nerfstudio logs (partial):
    ```bash
    Setting up training dataset...
    Caching all 170 images.

    Setting up evaluation dataset...
    Caching all 18 images.

    No checkpoints to load, training from scratch
    [15:21:33] Printing max of 10 lines. Set flag --logging.local-writer.max-log-size=0 to disable line        writer.py:388
            wrapping.
    Step (% Done)
    --------------------
    29910 (99.70%)      39.088 ms            3 s, 517.889 ms      107.70 K
    29920 (99.73%)      39.189 ms            3 s, 135.145 ms      107.42 K
    29930 (99.77%)      40.421 ms            2 s, 829.494 ms      104.84 K
    29940 (99.80%)      39.273 ms            2 s, 356.391 ms      107.32 K
    29950 (99.83%)      39.266 ms            1 s, 963.301 ms      107.18 K
    29960 (99.87%)      40.436 ms            1 s, 617.442 ms      104.66 K
    29970 (99.90%)      39.231 ms            1 s, 176.925 ms      107.29 K
    29980 (99.93%)      39.146 ms            782.924 ms           107.43 K
    29990 (99.97%)      40.211 ms            402.112 ms           105.24 K
    29999 (100.00%)
    ----------------------------------------------------------------------------------------------------
    Viewer at: https://viewer.nerf.studio/versions/23-01-25-0/?websocket_url=ws://localhost:7007
    ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
                                            🎉 🎉 🎉 Training Finished 🎉 🎉 🎉
    ```
* Job stats:
    ```txt
    Job ID: 3636336
    Cluster: graham
    User/Group: wribas/wribas
    State: CANCELLED (exit code 0)
    Nodes: 1
    Cores per node: 12
    CPU Utilized: 03:16:18
    CPU Efficiency: 13.70% of 23:52:36 core-walltime
    Job Wall-clock time: 01:59:23
    Memory Utilized: 6.39 GB
    Memory Efficiency: 19.96% of 32.00 GB
    ```

## /scratch/wribas/nerfstudio/uvic-data/DJI_202301291342_002_uvicmapper/outputs/

* Log file: /scratch/wribas/nerfstudio/nerfstudio_train_model_3686926.out
* Nerfstudio logs (partial):
    ```bash
    Setting up training dataset...
    Caching all 212 images.

    Setting up evaluation dataset...
    Caching all 23 images.

    No checkpoints to load, training from scratch
    [01:33:49] Printing max of 10 lines. Set flag --logging.local-writer.max-log-size=0 to disable line        writer.py:388
            wrapping.
    Step (% Done)
    --------------------
    29910 (99.70%)      39.742 ms            3 s, 576.792 ms      105.78 K
    29920 (99.73%)      39.941 ms            3 s, 195.260 ms      105.24 K
    29930 (99.77%)      41.153 ms            2 s, 880.725 ms      102.63 K
    29940 (99.80%)      39.976 ms            2 s, 398.585 ms      105.07 K
    29950 (99.83%)      40.009 ms            2 s, 0.470 ms        105.00 K
    29960 (99.87%)      40.962 ms            1 s, 638.476 ms      103.32 K
    29970 (99.90%)      39.951 ms            1 s, 198.518 ms      105.24 K
    29980 (99.93%)      40.097 ms            801.937 ms           104.68 K
    29990 (99.97%)      40.906 ms            409.056 ms           103.30 K
    29999 (100.00%)
    ----------------------------------------------------------------------------------------------------
    Viewer at: https://viewer.nerf.studio/versions/23-01-25-0/?websocket_url=ws://localhost:7007
    ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
                                            🎉 🎉 🎉 Training Finished 🎉 🎉 🎉
    ```
* Job stats:
    ```txt
    Job ID: 3686926
    Cluster: graham
    User/Group: wribas/wribas
    State: TIMEOUT (exit code 0)
    Nodes: 1
    Cores per node: 12
    CPU Utilized: 10:51:49
    CPU Efficiency: 11.31% of 4-00:03:24 core-walltime
    Job Wall-clock time: 08:00:17
    Memory Utilized: 13.35 GB
    Memory Efficiency: 41.71% of 32.00 GB
    ```

## /scratch/wribas/nerfstudio/uvic-data/DJI_202301291342_003_Extra_obliques_and_UVIC_footage/outputs/

* Log file: nerfstudio_train_model_3723127.out
* Nerfstudio logs (partial):
    ```bash
    Setting up training dataset...
    Caching all 77 images.

    Setting up evaluation dataset...
    Caching all 8 images.

    No checkpoints to load, training from scratch
    [02:55:54] Printing max of 10 lines. Set flag --logging.local-writer.max-log-size=0 to disable line        writer.py:388
               wrapping.
    Step (% Done)
    --------------------
    29910 (99.70%)      39.849 ms            3 s, 586.445 ms      105.68 K
    29920 (99.73%)      39.825 ms            3 s, 186.034 ms      105.75 K
    29930 (99.77%)      40.961 ms            2 s, 867.238 ms      103.41 K
    29940 (99.80%)      39.694 ms            2 s, 381.621 ms      106.07 K
    29950 (99.83%)      39.678 ms            1 s, 983.885 ms      106.10 K
    29960 (99.87%)      40.851 ms            1 s, 634.039 ms      103.68 K
    29970 (99.90%)      39.713 ms            1 s, 191.400 ms      106.06 K
    29980 (99.93%)      39.833 ms            796.657 ms           105.68 K
    29990 (99.97%)      40.996 ms            409.961 ms           103.26 K
    29999 (100.00%)
    ----------------------------------------------------------------------------------------------------
    Viewer at: https://viewer.nerf.studio/versions/23-01-25-0/?websocket_url=ws://localhost:7007
    ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
                                              🎉 🎉 🎉 Training Finished 🎉 🎉 🎉
    ```
* Job stats:
    ```txt
    Job ID: 3723127
    Cluster: graham
    User/Group: wribas/wribas
    State: TIMEOUT (exit code 0)
    Nodes: 1
    Cores per node: 12
    CPU Utilized: 10:45:42
    CPU Efficiency: 11.20% of 4-00:05:48 core-walltime
    Job Wall-clock time: 08:00:29
    Memory Utilized: 13.07 GB
    Memory Efficiency: 40.85% of 32.00 GB
    ```

## /scratch/wribas/nerfstudio/uvic-data/DJI_202301291342_005_Buildings_up_close/outputs/

* Log file: nerfstudio_train_model_3701054.out
* Nerfstudio logs (partial):
    ```bash
    Setting up training dataset...
    Caching all 18 images.

    Setting up evaluation dataset...
    Caching all 2 images.

    No checkpoints to load, training from scratch
    [11:29:04] Printing max of 10 lines. Set flag --logging.local-writer.max-log-size=0 to disable line        writer.py:388
               wrapping.
    Step (% Done)
    --------------------
    29910 (99.70%)      38.847 ms            3 s, 496.215 ms      108.50 K
    29920 (99.73%)      38.980 ms            3 s, 118.424 ms      108.03 K
    29930 (99.77%)      40.096 ms            2 s, 806.733 ms      105.67 K
    29940 (99.80%)      38.852 ms            2 s, 331.118 ms      108.31 K
    29950 (99.83%)      38.956 ms            1 s, 947.780 ms      107.93 K
    29960 (99.87%)      40.221 ms            1 s, 608.852 ms      105.31 K
    29970 (99.90%)      39.043 ms            1 s, 171.302 ms      107.97 K
    29980 (99.93%)      38.781 ms            775.628 ms           108.63 K
    29990 (99.97%)      39.734 ms            397.343 ms           106.77 K
    29999 (100.00%)
    ----------------------------------------------------------------------------------------------------
    Viewer at: https://viewer.nerf.studio/versions/23-01-25-0/?websocket_url=ws://localhost:7007
    ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
                                              🎉 🎉 🎉 Training Finished 🎉 🎉 🎉
    ```
* Job stats:
    ```txt
    Job ID: 3701054
    Cluster: graham
    User/Group: wribas/wribas
    State: TIMEOUT (exit code 0)
    Nodes: 1
    Cores per node: 12
    CPU Utilized: 10:47:29
    CPU Efficiency: 11.24% of 4-00:01:00 core-walltime
    Job Wall-clock time: 08:00:05
    Memory Utilized: 12.48 GB
    Memory Efficiency: 39.00% of 32.00 GB
    ```
