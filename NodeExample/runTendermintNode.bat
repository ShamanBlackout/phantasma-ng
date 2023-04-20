@echo off
rem Setup Node
set NODEPATH=.\node
set TMHOME=%NODEPATH%\
rem Change TENDERMINTPATH to 
set TENDERMINTPATH=tendermint 

rem Setup node if not setuped previously
set DIR=.\node\data\
if exist "%DIR%" ( 
    echo "Node already configured" 
) else ( 
    %TENDERMINTPATH% --home %TMHOME% init
)


rem start tendermint
rem --proxy_app "tcp://127.0.0.1:26558" is used to setup the proxy_app (Phantasma.Node) ip address / port that is going to list to
rem --p2p.seeds "node_ID@ip_address:node_port"  can be used as a parameter to provide the seeds other way is going into the config.toml file.
%TENDERMINTPATH% --home  %TMHOME% node

echo "%TMHOME%"