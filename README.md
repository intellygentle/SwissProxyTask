# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a Hardhat Ignition module that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat ignition deploy ./ignition/modules/Lock.js
```

# pre-requisites

git clone https://github.com/intellygentle/SwissProxyTask.git
cd SwissProxyTask
npm install hardhat
npm install openzeppelin/contracts@4 
npm install dotenv
touch .env
echo ".env" >> .gitignore
code .env
note: you should see a blank space above your terminal write this there "PRIVATE_KEY=xyz..." where "xyz..." is your burner wallet private key dont use "" too



# run scripts with

npx hardhat run scripts/deploy.js --network swisstronik
copy the smartcontract address and update it in Deployproxy.js
npx hardhat run scripts/deployNewI.js --network swisstronik
in the upgrade.js put this address in line 20 inside the ""
npx hardhat run scripts/Deployproxy.js --network swisstronik
in upgrade.js put the address in line 17 inside the ""

npx hardhat run scripts/upgrade.js --network swisstronik
copy your hash and use swisstronik explorer to get the transaction hash link


# push to github
git remote remove origin
git remote add origin https://github.com/intellygentle/SwissProxyTask

git checkout --orphan new-main
git add -A
git commit -m "Initial commit"
git branch -D main
git branch -m main
git push -f origin main