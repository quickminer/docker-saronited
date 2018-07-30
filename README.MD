# Saronite docker daemon

## Development Resources

- Web: [www.saronite.io](https://saronite.io)
- GitHub: [https://github.com/Saronite/saronite](https://github.com/Saronite/saronite)

## Introduction

Saronite is a cryptonote currency and an indirect for of the well-known Monero currency. Inherited from Monero are strong security, privacy and untraceability features that form a solid basis for further development. Our mission is to enhance the cryptonote protocol to provide a **lightweight**, **secure**, **well maintained** and **actively developed** (no-nonsense) coin.

Some main differences compared to other cryptonote coins are:

 - We use a 60 second block window which reduce transaction times
 - We enforce a minimum transaction mixin of 10 to fight blockchain analysis which could compromise privacy
 - We actively cooperate with other cryptonote coins and do not treat them as competition.


## Development funding

We do not have a premine. Instead we have a project development reward that causes coins to unlock with every block that is found. The algorithm (see below) will start with unlocking 6% of the block reward but gradually reduces to 0% in the next 10 years.  In total a maximum of 2% of the total coin supply will be unlocked for development.

```
f(x) = 0.06 * (1 - sqrt(x)) where x = current_supply / max_supply S.T. current_supply <= max_supply
```

## Coin Supply & Emission

- **Total supply**: **90,000,000** coins in first 10 years which is followed by a tail emission each year for inflation.
- **Coin symbol**: **XRN**
- **Coin Units**:
  + 1 Nano-Saronite &nbsp;= 0.0000001 **XRN** (10<sup>-7</sup> - _the smallest coin unit_)
  + 1 Micro-Saronite = 0.0001 **XRN** (10<sup>-4</sup>)
  + 1 Milli-Saronite = 0.1 **XRN** (10<sup>-1</sup>)
- **Hash algorithm**: CryptoNight (Proof-Of-Work)
- **Emission scheme**: Saronite's block reward uses Linear emission, block rewards will decrease over time.


## License

Please view [LICENSE](LICENSE)

[![License](https://img.shields.io/badge/license-BSD3-blue.svg)](https://opensource.org/licenses/BSD-3-Clause) 

## how to use:

docker docker run --restart unless-stopped -d --name saronited -p 55445:55445 --mount type=bind,source=/media/datadisk/saronitedata,target=/saronitedata quickminer/saronited

More details on source project:
https://github.com/Saronite/saronite

have fun,
quickminer