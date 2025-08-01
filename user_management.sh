#!/bin/bash

USER_FILE="userlist.txt"
LOG_FILE="user_creation.log"

if [[ ! -f $USER_FILE ]]; then
    echo "User list file not found!"
    exit 1
fi

while read -r USERNAME || [[ -n "$USERNAME" ]]; do
    [[ -z "$USERNAME" ]] && continue

    if id "$USERNAME" &>/dev/null; then
        echo "User $USERNAME already exists!" | tee -a "$LOG_FILE"
        continue
    fi

    PASSWORD=$(openssl rand -base64 12)

    useradd -m -s /bin/bash "$USERNAME"
    echo "$USERNAME:$PASSWORD" | sudo chpasswd
    chage -d 0 "$USERNAME"

    echo "User $USERNAME created with password: $PASSWORD" | tee -a "$LOG_FILE"

done < "$USER_FILE"

