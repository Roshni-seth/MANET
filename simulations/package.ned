package project.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;


@license(LGPL);
//
// TODO documentation
//
network project
{
    @display("bgb=615,469");
    submodules:
        server: StandardHost {
            @display("p=287,121");
        }
        client2: StandardHost {
            @display("p=233,258");
        }
        client1: StandardHost {
            @display("p=114,258");
        }
        client3: StandardHost {
            @display("p=356,258");
        }
        client4: StandardHost {
            @display("p=491,258");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=133,32");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client1.ethg++;
        server.ethg++ <--> Eth100M <--> client2.ethg++;
        server.ethg++ <--> Eth100M <--> client3.ethg++;
        server.ethg++ <--> Eth100M <--> client4.ethg++;
}

