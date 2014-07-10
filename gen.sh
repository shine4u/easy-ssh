#!/bin/sh

# run this in door-god then cp output/* to bin
# PATH in doorgod: vim .bashrc +++ export PATH=$PATH:~/bin

CLIENTS_NUM=0
CLIENTS[$CLIENTS_NUM]="dev wangbangxu 10.1.15.100 123qwedg"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="60 spider 10.1.5.60 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="61 spider 10.1.5.61 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="62 spider 10.1.5.62 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="63 spider 10.1.5.63 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="64 spider 10.1.5.64 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="65 spider 10.1.5.65 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="66 spider 10.1.5.66 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="80 spider 10.1.5.80 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="81 spider 10.1.5.81 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="82 spider 10.1.5.82 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="83 spider 10.1.5.83 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="84 spider 10.1.5.84 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="85 spider 10.1.5.85 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="86 spider 10.1.5.86 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="87 spider 10.1.5.87 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="88 spider 10.1.5.88 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="89 spider 10.1.5.89 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="101 spider 10.1.5.101 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="40 spider 10.1.5.40 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="42 spider 10.1.5.42 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="70 spider 10.1.5.70 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="71 spider 10.1.5.71 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="72 spider 10.1.5.72 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="73 spider 10.1.5.73 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="74 spider 10.1.5.74 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))
CLIENTS[$CLIENTS_NUM]="30 spider 10.1.5.30 spider8s"; CLIENTS_NUM=$((CLIENTS_NUM+1))

rm -rf output && mkdir -p ./output
cp ./ssh.expect ./output

for ((i=0;i<CLIENTS_NUM;i++)); do
    tokens=(${CLIENTS[i]})
    binname=${tokens[0]}
    username=${tokens[1]}
    hostaddr=${tokens[2]}
    password=${tokens[3]}
    echo "#!/bin/bash" > ./output/$binname
    echo "ssh.expect $username $hostaddr $password" >> ./output/$binname
done
chmod +x ./output/*
