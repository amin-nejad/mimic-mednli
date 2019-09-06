#!/bin/bash

mkdir embeddings

./word2vec/word2vec -train data/original.txt -output embeddings/original.embeddings.txt -cbow 0 -size 300 -window 5 -negative 10 -threads 20 -binary 0 -iter 10

./word2vec/word2vec -train data/original-lowresource.txt -output embeddings/original-lowresource.embeddings.txt -cbow 0 -size 300 -window 5 -negative 10 -threads 20 -binary 0 -iter 10

./word2vec/word2vec -train data/transformer.txt -output embeddings/transformer.embeddings.txt -cbow 0 -size 300 -window 5 -negative 10 -threads 20 -binary 0 -iter 10

./word2vec/word2vec -train data/transformer-lowresource.txt -output embeddings/transformer-lowresource.embeddings.txt -cbow 0 -size 300 -window 5 -negative 10 -threads 20 -binary 0 -iter 10

./word2vec/word2vec -train data/gpt2.txt -output embeddings/gpt2.embeddings.txt -cbow 0 -size 300 -window 5 -negative 10 -threads 20 -binary 0 -iter 10

./word2vec/word2vec -train data/gpt2-lowresource.txt -output embeddings/gpt2-lowresource.embeddings.txt -cbow 0 -size 300 -window 5 -negative 10 -threads 20 -binary 0 -iter 10

./word2vec/word2vec -train data/eda.txt -output embeddings/eda.embeddings.txt -cbow 0 -size 300 -window 5 -negative 10 -threads 20 -binary 0 -iter 10

./word2vec/word2vec -train data/eda-lowresource.txt -output embeddings/eda-lowresource.embeddings.txt -cbow 0 -size 300 -window 5 -negative 10 -threads 20 -binary 0 -iter 10