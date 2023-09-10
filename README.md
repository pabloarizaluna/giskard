This repo is now archive because is no longer working properly, I am starting a new one.
---
# giskard

## Setup

Create keymaps in qmk folder and create .build folder in this repo folder

```
make setup
```

## Compile

Copy any update to qmk folder, compile with qmk-cli and copy hex file to `giskard/.build`

```
make compile
```

## Flash

First flash with dfu the left side, after the right side

```
make flash
```
