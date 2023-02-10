#!/bin/bash
#SBATCH --account=def-ycoady
#SBATCH --mem=64G
#SBATCH --cpus-per-task=12
#SBATCH --time=2:59:0
#SBATCH --mail-user=ribas.w@northeastern.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --output=nerfstudio_colmap_%j.out

programname=$0
function usage {
    echo ""
    echo "Process the given images with Nerfstudio COLMAP CLI, storing the resulting COLMAP files in the given output directory."
    echo ""
    echo "usage: $programname --images string --output string "
    echo ""
    echo "  --images string         the directory that contains the raw images to be processed by the COLMAP pipeline"
    echo "                          (example: /scratch/derekja/ECS/DJI_202301291342_001_uvicmapper/)"
    echo "  --output string         the directory to store the COLMAP processed images and related files"
    echo "                          (example: /scratch/wribas/nerfstudio/data)"
    echo "  --container string      OPTIONAL - the path to the nerfstudio singularity container. By default it loads Weder's container on Compute Canada"
    echo "                          (example: /scratch/wribas/nerfstudio/nerfstudio-cuda-11-3.sif)"
    echo "  --help                  displays this help"
    echo ""
}

function die {
    printf "Script failed: %s\n\n" "$1"
    exit 1
}

while [ $# -gt 0 ]
do
    case $1 in
        --images)
            images_path=$2
            shift 2
            ;;
        --output)
            output_path=$2
            shift 2
            ;;
        --container)
            nerfstudio_container=$2
            shift 2
            ;;
        --help)
            usage
            exit 0
            ;;
        *)
            usage
            die "Error: Unrecognized option $1"
            ;;
    esac
done

if [ -z "$images_path" ]
then
    usage
    die "Missing required parameters --images"
fi

if [ -z "$output_path" ]
then
    usage
    die "Missing required parameters --output"
fi

if [ -z "$nerfstudio_container" ]
then
    nerfstudio_container="/scratch/wribas/nerfstudio/nerfstudio-cuda-11-3.sif"

    if [ ! -e "$nerfstudio_container" ]
    then
        die "Could not find the nerfstudio container within the given path"
    fi
fi

module load singularity

singularity exec --bind $output_path:/opt/nerfstudio-nu-papers/data --bind $images_path:/opt/nerfstudio-nu-papers/images ${nerfstudio_container} bash -c "cd /opt/nerfstudio-nu-papers && . venv/bin/activate && ns-process-data images --data images/ --output-dir data/ --no-gpu"
