# PanDA testbed for streaming data applications in ePIC

This repository is intended for documentation and sample scripts
necessary for setting up elements of PanDA testing, in the context
of streaming readout in the ePIC experiment.

## Mattermost resources

[NPPS Distributed Software](https://chat.sdcc.bnl.gov/npps/channels/distributed-software)

[CERN-based PanDA forum](https://mattermost.web.cern.ch/panda/channels/town-square)

## PanDA Queues

* BNL SDCC shared pool (Queue name: **BNL_PanDA_1**) – harvester submits pilots to this resource via the OSG CE at SCDF.  
* OSG EIC shared resources (Queue name: **BNL_OSG_PanDA_1**) – harvester sits on top of an OSG Access Point (AP) at SDF,
submitting pilots to the Open Science Pool as a normal user. Right now this OSG AP is configured to run jobs on EIC shared
resources on OSG. 
