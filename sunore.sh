#!/bin/bash
# simple menu to do various functions
while true
do
  clear
cat <<'EOF'

 $$$$$$\  $$\   $$\            $$$$$$\  $$$$$$$\  $$$$$$$$\
$$  __$$\ $$ |  $$ |          $$  __$$\ $$  __$$\ $$  _____|
$$ /  \__|$$ |  $$ |$$$$$$$\  $$ /  $$ |$$ |  $$ |$$ |
\$$$$$$\  $$ |  $$ |$$  __$$\ $$ |  $$ |$$$$$$$  |$$$$$\
 \____$$\ $$ |  $$ |$$ |  $$ |$$ |  $$ |$$  __$$< $$  __|
$$\   $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |
\$$$$$$  |\$$$$$$  |$$ |  $$ | $$$$$$  |$$ |  $$ |$$$$$$$$\
 \______/  \______/ \__|  \__| \______/ \__|  \__|\________|
                                            www.sunore.co.za

EOF
  echo "============================================================"
  echo "Select from the following functions.              q to EXIT."
  echo "============================================================"
  echo "1 - Clean Workspace                                         "
  echo "2 - Run DocCheck                                            "
  echo "3 - Compile R Code                                          "
  echo "4 - Compile PDF                                             "
  echo "5 - Show PDF                                                "
  echo "6 - All of the above                                        "
  echo "q - EXIT                                                    "
  read -r -p "Enter your choice [1-6] : " answer
  case "$answer" in
    1)  make clean ;;
    2)  make check ;;
    3)  make code  ;;
    4)  make pdf   ;;
    5)  make show  ;;
    6)  make ;;
    "Q")  exit                      ;;
    "q")  exit                      ;;
    * )   echo "invalid option"     ;;
  esac
  echo "Enter return to continue \c"
  read input
  done
