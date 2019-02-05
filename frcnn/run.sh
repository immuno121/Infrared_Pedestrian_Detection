#!/bin/bash
#
#SBATCH --partition=titanx-long    # Partition to submit to <m40-short|m40-long|teslax-short|teslax-long>
#SBATCH --job-name=faster_rcnn
#SBATCH -o run_logs/faster_rcnn_res_%j.txt            # output file
#SBATCH -e run_logs/faster_rcnn_res_%j.err            # File to which STDERR will be written
#SBATCH --ntasks=1
#SBATCH --time=07-00:00:00          # D-HH:MM:SS
#SBATCH --mem=20000
#SBATCH --mail-type=ALL
#SBATCH --mail-user=shasvatmukes@cs.umass.edu


#module load python2/current
#python temp.py
#source activate py27

#python braindecode/models/mymodel
#python trainval_net.py --dataset kaist --net vgg16 --cuda --mGPU --session=12
#python trainval_net.py --dataset kaist --net vgg16 --cuda --mGPUs --epochs=10 --s=1
#python trainval_net.py --dataset kaist --net vgg16 --cuda --epochs=50 --s=2 --checksession 2 --checkepoch 20 --checkpoint 11 --r=True
#python test_net.py --dataset kaist --net vgg16 --cuda
python test_net.py --dataset kaist --net vgg16 --cuda  --checksession 1 --checkepoch 50 --checkpoint 44315               

#python process_data.py
#python mymodel.py
#python train.py
#python cluster.py
#python seq_exp2.py
#python test.py
#python cvtest.py
#lspci -vnn|grep NVIDIA



sleep 1
exit

