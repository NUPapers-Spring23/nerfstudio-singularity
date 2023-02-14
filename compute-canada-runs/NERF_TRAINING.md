# NeRF Model Training on Compute Canada

This file contains the logs and batch job stats for the NeRF model training on Compute Canada using nerfstudio.

Each section is titled by the folder name where the trained model is stored at.

## /scratch/wribas/nerfstudio/uvic-data/DJI_202301291342_001_uvicmapper/outputs/data/nerfacto/2023-02-12_151225/

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
