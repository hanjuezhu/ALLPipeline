dir=$1

python test_trained_model.py -s $dir/filenames_scores.txt $dir train >> $dir/model_train.out
python test_trained_model.py -s $dir/filenames_scores.txt $dir test >> $dir/model_test.out
python ../data/print_avg_rotated_scores.py $dir train
python ../data/print_avg_rotated_scores.py $dir test
