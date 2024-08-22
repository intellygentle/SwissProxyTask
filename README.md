# Swisstronik Deploy Proxy Quest



## pre-requisites
```
git clone https://github.com/intellygentle/SwissProxyTask.git
cd SwissProxyTask
```

```
npm install dotenv
```
```
touch .env
echo ".env" >> .gitignore
code .env
```
note: you should see a blank space above your terminal write this there "PRIVATE_KEY=xyz..." where "xyz..." is your burner wallet private key dont use "" too

<img width="581" alt="privK" src="https://github.com/user-attachments/assets/34d1582e-098e-4bc6-90a1-037b093e3473">




## run scripts with
```
npx hardhat run scripts/deploy.js --network swisstronik
```
copy the smartcontract address and update it in Deployproxy.js

```
npx hardhat run scripts/deployNewI.js --network swisstronik
```
in the upgrade.js put this address in line 20 inside the ""

```
npx hardhat run scripts/Deployproxy.js --network swisstronik
```
in upgrade.js put the address in line 17 inside the ""

```
npx hardhat run scripts/upgrade.js --network swisstronik
```
copy your hash and use swisstronik explorer to get the transaction hash link
https://explorer-evm.testnet.swisstronik.com/


# push to github
```
git remote remove origin
```
```
git remote add origin https://yourGitHubRepoLink
```
```
git checkout --orphan new-main
git add -A
git commit -m "Initial commit"
git branch -D main
git branch -m main
git push -f origin main
```
