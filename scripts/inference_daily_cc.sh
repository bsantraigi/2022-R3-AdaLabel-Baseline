DATA="data_daily_cc"
DATA_DIR="data/data_daily_cc"
#DATA_DIR="data_ost"
DATASET="bert"

python3 translate.py -gpu "$1" -model "$2" \
    -output result/"$DATASET"_adalab_"$DATA".txt -beam 1 -batch_size 32 \
    -src "$DATA_DIR"/src-test.txt -max_length 30 -tokenizer bert
