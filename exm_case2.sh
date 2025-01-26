echo "enter your option"

read -p "enter your choice [1-4]: " choice

case $choice in
1)
mkdir logs
echo "directory created"
ls
;;
2)
cd logs
touch log1
echo "file is created in logs directory"
;;
3)
ls -l > logs/log1
echo "'ls -l' output redirected to 'log1'"
;;
4)
echo "EXIT"
;;
*)
echo "invalid option! try again"
;;
esac
