export PATH=/home/maxim/pclient/bin:$PATH
export PANDA_CONFIG_ROOT=~/.pathena
export PANDA_SYS=/home/maxim/pclient
export PANDA_PYTHONPATH=`bash ${PANDA_SYS}/etc/panda/site_path.sh`
export PYTHONPATH=${PANDA_PYTHONPATH}${PYTHONPATH:+:$PYTHONPATH}

export PANDA_URL_SSL=https://pandaserver01.sdcc.bnl.gov:25443/server/panda
export PANDA_URL=https://pandaserver01.sdcc.bnl.gov:25443/server/panda
export PANDACACHE_URL=https://pandaserver01.sdcc.bnl.gov:25443/server/panda
export PANDAMON_URL=https://pandamon01.sdcc.bnl.gov
export PANDA_AUTH=oidc
export PANDA_AUTH_VO=EIC
export PANDA_USE_NATIVE_HTTPLIB=1
export PANDA_BEHIND_REAL_LB=1
