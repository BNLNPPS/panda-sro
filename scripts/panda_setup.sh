export PATH=/direct/usatlas+u/xzhao/pclient/bin:$PATH

export PANDA_CONFIG_ROOT=~/.pathena
export PANDA_SYS=/direct/usatlas+u/xzhao/pclient

export PANDA_PYTHONPATH=`bash ${PANDA_SYS}/etc/panda/site_path.sh`

export PYTHONPATH=${PANDA_PYTHONPATH}${PYTHONPATH:+:$PYTHONPATH}
