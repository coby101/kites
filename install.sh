# generated file, DO NOT MODIFY as any changes will be clobbered
# script was written by create-bash-scripts in ror/general.lisp on Wednesday November 10, 2021 at 10:48:22 AEDT
SIM_DIR=/home/coby/soft_sim/implementations/kites/ror
INS_DIR=/home/coby/rails_apps/kites

cp -r $SIM_DIR/app/* $INS_DIR/app/
cp -r $SIM_DIR/db/* $INS_DIR/db/
cp $SIM_DIR/config/initializers/inflections.rb $INS_DIR/config/initializers/
cp $SIM_DIR/config/routes.rb $INS_DIR/config/
# cp $SIM_DIR/load.rb $INS_DIR/

