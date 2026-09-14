# OMNeT++ IT-OT Network Simulation

## Overview

This module contains the IT-OT network simulation developed using
OMNeT++ and the INET framework.

The purpose of the simulation is to create a controlled network
environment containing IT devices, OT devices, servers, an attacker,
and honeypots.

The simulated environment is used to study network communication,
traffic behavior, simulation events, and performance measurements.

---

## Network Topology

The simulated network contains the following components:

### IT Environment

- Employee 1
- Employee 2
- HR Workstation
- IT Server
- IT Switch

### OT Environment

- HMI
- PLC1
- PLC2
- OT Server
- OT Switch

### Network Infrastructure

- Router
- IPv4 Network Configurator

### Security Components

- Attacker
- Honeypot 1
- Honeypot 2

---

## Network Architecture

```text
                    IT NETWORK
                       |
       +---------------+---------------+
       |               |               |
   Employee 1      Employee 2        HR
       |               |               |
       +---------------+---------------+
                       |
                   IT Switch
                       |
                   IT Server
                       |
                     Router
                       |
                   OT Switch
                 /     |      \
               HMI    PLC1    PLC2
                        |
                    OT Server


              Security Environment
                       |
                    Attacker
                       |
              +--------+--------+
              |                 |
          Honeypot 1        Honeypot 2
