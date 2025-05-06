# PanDA testbed for streaming data applications in ePIC

This repository is intended for documentation and sample scripts
necessary for setting up elements of PanDA testing, in the context
of streaming readout in the ePIC experiment.

## Mattermost resources

[NPPS Distributed Software](https://chat.sdcc.bnl.gov/npps/channels/distributed-software)
[CERN-based PanDA forum](https://mattermost.web.cern.ch/panda/channels/town-square)
[CERN-based technical forum - for experts](https://mattermost.web.cern.ch/panda/channels/technical-forum)

## PanDA Queues

* BNL SDCC shared pool (Queue name: **BNL_PanDA_1**) – harvester submits pilots to this resource via the OSG CE at SCDF.  
* OSG EIC shared resources (Queue name: **BNL_OSG_PanDA_1**) – harvester sits on top of an OSG Access Point (AP) at SDF,
submitting pilots to the Open Science Pool as a normal user. Right now this OSG AP is configured to run jobs on EIC shared
resources on OSG.

## Gri Certificate

To get a grid certificate, different institutions may use different CAs. 
* These are instructions on how to get a grid certificate from the CERN CA and CILogon: https://www.sdcc.bnl.gov/information/installing-grid-certificate
* Or, using JLab CA: https://github.com/eic/eic.github.io/blob/add-guidelines-for-production-liasions/_resources/production_liasion_guidelines.md#getting-a-certificate-and-key


## PanDA client installation

### Short version
```bash
python3 -m venv pclient
. pclient/bin/activate
pip install panda-client
```

Depending on the Python version, the user may see a deprecation note regarding the packaging (setup vs TOML).


### Detailed instructions

https://panda-wms.readthedocs.io/en/latest/client/panda-client.html

## PanDA IAM registration

* Regsiter at https://panda-iam-doma.cern.ch
* When the client is run for the first time, there will be a validation link presented to the user


## CVMFS

Pretty good instruction to set it up:

https://cvmfs.readthedocs.io/en/stable/cpt-quickstart.html

## Setting up Rucio

```
source /cvmfs/eic.opensciencegrid.org/rucio-clients/alrb_setup.sh
voms-proxy-init (no VOMS extension needed)
export RUCIO_ACCOUNT=<youraccount>
```
