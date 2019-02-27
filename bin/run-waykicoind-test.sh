docker run --name waykicoind-testnet -p 18920:18920 -p 6967:6968 \
  -v `pwd`/conf/WaykiChain.conf:/root/.WaykiChain/WaykiChain.conf \
  -v `pwd`/data:/root/.WaykiChain/testnet \
  -v `pwd`/bin:/opt/wicc/bin \
  -v `pwd`/contract:/tmp/lua \
  -d wicc/waykicoind
