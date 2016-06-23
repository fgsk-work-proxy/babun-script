#
# forward port $1 to $2
#
function ptop() {
 iptables -t nat -A PREROUTING -p tcp --dport "$1" -j REDIRECT --to "$2"
}
