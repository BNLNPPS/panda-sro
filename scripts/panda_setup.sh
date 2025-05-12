# in the following, the path to "pclient"
# is the one where the user has installed the virtual
# environment for the PanDA client. It means the folder with
# all the components.

export PATH=/home/maxim/pclient/bin:$PATH
export PANDA_CONFIG_ROOT=~/.pathena
export PANDA_SYS=/home/maxim/pclient
export PANDA_PYTHONPATH=`bash ${PANDA_SYS}/etc/panda/site_path.sh`
export PYTHONPATH=${PANDA_PYTHONPATH}${PYTHONPATH:+:$PYTHONPATH}
