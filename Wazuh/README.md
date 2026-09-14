# Wazuh Security Monitoring

## Overview

Wazuh is used as the security monitoring component of the Mini SOC
project.

It provides security event collection, analysis, alert generation,
and dashboard-based monitoring.

## Monitoring Architecture

```text
Windows Host
     |
     v
Wazuh Agent
     |
     v
Wazuh Manager
     |
     v
Detection Rules
     |
     v
Wazuh Dashboard
     |
     v
Security Analysis
