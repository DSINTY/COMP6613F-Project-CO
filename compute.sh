# Generate graphs
echo "Generating training graphs..."
cd data
python rbgraph_generator.py --num_graph 4000 --save_dir rb200-300/train
python rbgraph_generator.py --num_graph 500 --save_dir rb200-300/test
cd ..

# Training
echo "Starting training..."
cd gflownet
python main.py input=rb200-300 alg=fl bsit=8

echo "Done."