# PowerSweep

A Basic PowerShell Ping Sweep for Local Networks

Justin Sleight - 2017

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

[![Language: PoweShell](https://img.shields.io/badge/Language-PowerShell-blue.svg)](https://technet.microsoft.com/en-us/library/bb978526.aspx)


## Getting Started

PowerSweep is a basic PowerShell ping sweep for local networks. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

PowerShell 5 running on Windows 7, 8, 8.1 or any version of 10.
To determine your version of PowerShell installed, open a command-line with ```cmd``` and type ```ps``` to enter powershell.

```
cmd
powershell
$PSVersionTable.PSVersion
```
This will output a table with relevant information:

```
Major: Major build version.
Minor: Minor build version.
Build: Build version.
Revision: Current Revision.
```


### Execution

Get the Dev Environment Running:

Open PowerShell ISE
From ```Run``` execute ```powershell_ise```

Ensure that you have script execution policies enabled on your system:
In the PowerShell ISE or PS CMD window:

```Set-ExecutionPolicy Unrestricted```

Load (Open) PowerSweep.PS1 into a new tab, and press ```F5``` or ```Run``` button to execute script.

The script will then run, and give the following output if all parameters are met:
```
Current IP Address: 192.168.0.93
Segmented IP Address: 192 168 0 93
First 3 Octets: 192.168.0

Source        Destination     IPV4Address      IPV6Address       Bytes    Time(ms) 
------        -----------     -----------      -----------       -----    -------- 
CANSAS-WAVE   192.168.0.1                                        32       0        

```


## Deployment

No additional Deployment notes at this time.

## Built With

* [PowerShell](https://msdn.microsoft.com/en-us/powershell/mt173057.aspx) - PowerShell

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/justinsleight/contribute.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

No other versioning at this time.

## Authors

* **Justin Sleight** - *Initial work* - [Justin Sleight](https://github.com/justinsleight)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project. (Upcoming)

## License

This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/justinsleight/PowerSweep/blob/master/license.md) file for details

## Acknowledgments

Incoming
