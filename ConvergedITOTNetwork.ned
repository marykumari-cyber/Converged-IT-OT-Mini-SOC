package convergeditot_minisoc;

import inet.node.inet.StandardHost;
import inet.node.inet.Router;
import inet.node.ethernet.EthernetSwitch;
import inet.node.ethernet.Eth100M;

network ConvergedITOTNetwork
{
    submodules:
        router: Router {
            @display("p=600,350");
        }

        itSwitch: EthernetSwitch {
            @display("p=350,250");
        }

        otSwitch: EthernetSwitch {
            @display("p=850,250");
        }

        employee1: StandardHost {
            @display("p=120,120");
        }

        employee2: StandardHost {
            @display("p=120,220");
        }

        hr: StandardHost {
            @display("p=120,320");
        }

        itServer: StandardHost {
            @display("p=350,120");
        }

        hmi: StandardHost {
            @display("p=850,120");
        }

        plc1: StandardHost {
            @display("p=1050,120");
        }

        plc2: StandardHost {
            @display("p=1050,220");
        }

        otServer: StandardHost {
            @display("p=850,380");
        }

        attacker: StandardHost {
            @display("p=600,550");
        }

        honeypot1: StandardHost {
            @display("p=350,550");
        }

        honeypot2: StandardHost {
            @display("p=850,550");
        }

    connections:
        employee1.ethg++ <--> Eth100M <--> itSwitch.ethg++;
        employee2.ethg++ <--> Eth100M <--> itSwitch.ethg++;
        hr.ethg++ <--> Eth100M <--> itSwitch.ethg++;
        itServer.ethg++ <--> Eth100M <--> itSwitch.ethg++;

        itSwitch.ethg++ <--> Eth100M <--> router.ethg++;
        router.ethg++ <--> Eth100M <--> otSwitch.ethg++;

        hmi.ethg++ <--> Eth100M <--> otSwitch.ethg++;
        plc1.ethg++ <--> Eth100M <--> otSwitch.ethg++;
        plc2.ethg++ <--> Eth100M <--> otSwitch.ethg++;
        otServer.ethg++ <--> Eth100M <--> otSwitch.ethg++;

        attacker.ethg++ <--> Eth100M <--> itSwitch.ethg++;

        honeypot1.ethg++ <--> Eth100M <--> itSwitch.ethg++;
        honeypot2.ethg++ <--> Eth100M <--> otSwitch.ethg++;
}