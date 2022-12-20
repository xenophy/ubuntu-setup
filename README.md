# ubuntu-setup

A setup scripts for Ubuntu 22.04 LTS

## Desktop

wget

```
bash -c "$(wget https://bit.ly/3YEwbaF -O -)"

# or

bash -c "$(wget https://raw.githubusercontent.com/xenophy/ubuntu-setup/main/desktop-setup.sh -O -)"
```

curl

```
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/xenophy/ubuntu-setup/main/desktop-setup.sh | bash
```

## Server

wget

```
bash -c "$(wget https://raw.githubusercontent.com/xenophy/ubuntu-setup/main/server-setup.sh -O -)"
```

curl

```
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/xenophy/ubuntu-setup/main/server-setup.sh | bash
```
