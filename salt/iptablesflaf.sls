ssh-iptables:
    iptables.append:
      - table: filter
      - chain: INPUT
      - proto: tcp
      - dport: 22
      - jump: ACCEPT
      - save: True

drop-iptables:
#-A INPUT -p tcp -m tcp ! --tcp-flags FIN,SYN,RST,ACK SYN -m state --state NEW -j DROP
  iptables.append:
    - table: filter
    - chain: INPUT
    - proto: tcp
    - tcp-flags: "FIN,SYN,RST,ACK SYN"
    - match: state
    - connstate: NEW
    - jump: DROP
    - save: True
