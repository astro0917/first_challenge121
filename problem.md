# Sanity Download

- Namespace: picoctf/examples
- Type: custom
- Category: General Skills
- Points: 1
- Templatable: no

## Description

Test your internet connection! Fabian wants to hack it!

## Details

Download the flag [here]({{url_for("fabi")}}).

## Hints

- Download the file and open it in a text editor like vi or Notepad.

## Solution Overview

Download `fabi` and open it.

## Challenge Options

```yaml
cpus: 0.5
memory: 128m
pidslimit: 20
ulimits:
  - nofile=128:128
diskquota: 64m
init: true
```
