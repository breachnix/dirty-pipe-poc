# Dirty Pipe POC
CVE-2022-0847 POC - https://dirtypipe.cm4all.com/

## Description
This exploit attempts to use the `CVE-2022-0847` vulnerability to overwrite a read only file.

The `./exploit.sh` file will:
1. Create a `read_only_file.txt`
2. Execute the `dirtypipe` exploit.
3. Check if the `dirtypipe` exploit worked.
---
Before running the exploit, the `read_only_file.txt` will contain:
```
This is a read only file...
```

If the exploit worked, the `read_only_file.txt` will contain:
```
This is a read only exploit
```

## Usage
```console
foo@bar:~$ cd /tmp # We don't need to keep these files.
foo@bar:~$ git clone https://github.com/breachnix/dirty-pipe-poc && cd dirty-pipe-poc
foo@bar:~$ make && make exploit # make & cc will need to be installed.
```
