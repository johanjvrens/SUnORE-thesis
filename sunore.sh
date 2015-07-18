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
  echo "1 - Build everything [3-7]                                  "
  echo "2 - Build (without DocCheck) [3,5,6,7]                      "
  echo "3 - Clean workspace                                         "
  echo "4 - Run DocCheck                                            "
  echo "5 - Compile R Code                                          "
  echo "6 - Compile PDF                                             "
  echo "7 - Show PDF                                                "
  echo "q - EXIT                                                    "
  read -r -p "Enter your choice [1-6] : " answer
  echo "============================================================"
  case "$answer" in
    1)  make ;;
    2)  make build ;;
    3)  make clean ;;
    4)  make check ;;
    5)  make code  ;;
    6)  make pdf   ;;
    7)  make show  ;;
    "Q")  exit                      ;;
    "q")  exit                      ;;
    * )   echo "invalid option"     ;;
  esac
  echo "============================================================"
  echo "Enter return to continue \c"
  read input
  done
