# vpn dev repository
## Init repository

Please read readme.md from github.com/tomasz2101/tools

###SUBMODULE INIT
git submodule add git@github.com:tomasz2101/tools.git tools

git submodule update --init --recursive --remote

ln -s ./tools/.gitignore .gitignore



###USAGE

docker run -d --privileged --network=host -e NETWORK_ID=XXX tomasz2101/zerotier