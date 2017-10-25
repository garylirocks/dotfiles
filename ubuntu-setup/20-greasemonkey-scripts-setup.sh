#! /bin/bash

MY_HOME=$HOME

DROPBOX_DIR=${MY_HOME}/drop
CONFIGS_DIR=${DROPBOX_DIR}/config
CONFIGS_HOME_DIR=${DROPBOX_DIR}/config/home

cd ${MY_HOME} 

# =====================
# greasemonkey scripts
# =====================

FIREFOX_CONFIG_DIR=`ls -d .mozilla/firefox/*.default`
FIREFOX_GM_DIR=$FIREFOX_CONFIG_DIR/gm_scripts
DRPBX_SCRIPTS_DIR=${CONFIGS_DIR}/gm_scripts

echo 'setting greasemonkey scripts directory: '

if [ -d "$FIREFOX_GM_DIR" ]; then
    if [ `readlink -f $FIREFOX_GM_DIR` = "$DRPBX_SCRIPTS_DIR"  ]; then
        echo 'Already setuped'    
    else
        echo 'Warning:' "$FIREFOX_GM_DIR" 'exists, and do not linking correctly!'
    fi
else
    ln -s $DRPBX_SCRIPTS_DIR $FIREFOX_GM_DIR
    echo $FIREFOX_GM_DIR ' -> ' $DRPBX_SCRIPTS_DIR

    if [ $? -eq 0 ]; then
        echo 'Done'
    fi    
fi    


