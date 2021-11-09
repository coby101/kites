# generated file, DO NOT MODIFY as any changes will be clobbered
# script was written by create-bash-scripts in ror/general.lisp on Wednesday November 10, 2021 at 10:48:22 AEDT
INS_DIR=/home/coby/rails_apps/kites
BCK_DIR=$INS_DIR/backups/`date +%y%m%d.%H%M`

mkdir -p $INS_DIR/backups/
echo "*
" > $INS_DIR/backups/.gitignore

mkdir -p $BCK_DIR
mkdir -p $BCK_DIR/app
mkdir -p $BCK_DIR/app/controllers/
mkdir -p $BCK_DIR/app/models/
mkdir -p $BCK_DIR/app/views/
mkdir -p $BCK_DIR/config/
mkdir -p $BCK_DIR/config/initializers/
mkdir -p $BCK_DIR/db/


# create backups of last installation for recovery and debugging
cp $INS_DIR/app/controllers/*.rb $BCK_DIR/app/controllers/
cp $INS_DIR/app/models/*.rb $BCK_DIR/app/models/
cp -r $INS_DIR/app/views/* $BCK_DIR/app/views/
cp $INS_DIR/db/schema.rb $BCK_DIR/db/
cp $INS_DIR/db/seeds.rb $BCK_DIR/db/
cp $INS_DIR/config/initializers/inflections.rb $BCK_DIR/config/initializers/
cp $INS_DIR/config/routes.rb $BCK_DIR/config/
# cp $INS_DIR/load.rb $BCK_DIR/


# clean up installed files unless they are sure to be clobbered later.
# routes.rb, load.rb, seeds.rb, schema.rb, inflections.rb all left alone
rm -rf $INS_DIR/app/controllers/*.rb
rm -rf $INS_DIR/app/models/*.rb
rm -rf $INS_DIR/app/views/*
