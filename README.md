# mimic-mednli

1. Download and compile word2vec:

```
git clone https://github.com/svn2github/word2vec.git
cd word2vec
make
```

2. Run preprocessing notebook
3. Run word2vec script
4. Download mednli repository
```
git clone https://github.com/jgc128/mednli
```
5. Download and extract the content of the `mednli_data.zip` from Physionet and save into a directory called `./mednli/data/mednli_1.0`
6. Follow the instructions on ` https://github.com/jgc128/mednli` carefully for setting up the environment and some preprocessing
7. Use the word embeddings and the training script provided to train the model
```
python train_model.py with model_class=PyTorchSimpleModel embeddings_filename=<pickled_embeddings_file>
```
8. Run the trained model and retrieve accuracy result
```
python predict.py < data/mednli_1.0/mli_test_v1.jsonl > data/test_input_probabilities.txt
```
