*Snort Intrusion Detection and Prevention System Project*

This project demonstrates how to deploy and configure Snort as a Network Intrusion Detection System (NIDS) to detect and prevent cyberattacks, 
with a focus on custom rules and simulated attack scenarios.


*Project Structure:*
.
├── config
│   ├── snort.conf            # Snort configuration file
│   ├── local.rules           # Custom general attack rules
│   └── icmp.rules            # ICMP-specific rules
├── scripts
│   └── simulation_attack.sh  # Attack simulation script
├── logs
│   ├── tcp_syn_flood.log     # Log from TCP SYN flood attack
│   ├── icmp_flood.log        # Log from ICMP flood attack
│   └── sample_alerts.log     # Combined alert log file
│── rules                     # Rules directory
│   ├── README.md             # Rules overview and setup instructions
│   └── local.rules
│   └── icmp.rules
│── docs                      # Documentation directory
|__README.md                  # Project overview and setup instructions


*Setup*

*Clone the Repository:*
git clone https://github.com/Fatimabouyarmane/snort-IDS
cd snort-IDS
Configure Snort: Copy snort.conf and rules from the config folder to your Snort installation (/etc/snort/).

*Run Snort:*
sudo snort -A console -q -c /etc/snort/snort.conf -i <network_interface>


*Simulate Attacks*

Run simulation_attack.sh to simulate TCP SYN and ICMP attacks:

chmod +x scripts/simulation_attack.sh
sudo ./scripts/simulation_attack.sh

*Logs and Results*
Logs from attacks are saved in the logs folder, with descriptions provided in each file.

*Conclusion*
This project highlights Snort’s effectiveness in detecting network threats and emphasizes the importance of custom rule configurations.