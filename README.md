# Converged IT-OT Mini SOC

## OMNeT++ Network Simulation and Wazuh Security Monitoring

A cybersecurity mini-project that combines **IT-OT network simulation using OMNeT++ and INET** with **security monitoring using Wazuh**.

The project creates a controlled IT-OT network environment containing IT systems, OT/industrial devices, servers, an attacker, and honeypots. OMNeT++ is used to simulate network communication and traffic, while Wazuh is used to monitor security events from a Windows endpoint and visualize authentication-related security activity.

---

## Project Objectives

- Design a small converged IT-OT network environment.
- Simulate network communication between IT and OT devices.
- Generate and analyze network traffic using OMNeT++.
- Include attacker and honeypot nodes for security experimentation.
- Monitor endpoint security events using Wazuh.
- Detect authentication failures.
- Provide a simple SOC-style monitoring environment.
- Demonstrate how network simulation and security monitoring can work together.

---

## System Architecture

```text
                    IT NETWORK
                       |
       +---------------+---------------+
       |               |               |
   Employee 1      Employee 2         HR
       |               |               |
       +----------- IT Switch ---------+
                       |
                   IT Server
                       |
                    Router
                       |
                    OT Switch
                /       |       \
              HMI      PLC1     PLC2
                \       |       /
                    OT Server

              Security Environment
               /       |        \
          Honeypot1  Attacker  Honeypot2

                       |
                       v

              Windows Security Events
                       |
                       v
                    Wazuh
                       |
                       v
              Security Monitoring
