#OPTIMIZATION
set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue    ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 50                         ;# max packet in ifq
set val(nn)     21                         ;# number of mobilenodes
set val(rp)     DSDV                       ;# routing protocol
set val(x)      861                      ;# X dimension of topography
set val(y)      594                      ;# Y dimension of topography
set val(stop)   35.0                         ;# time of simulation end

#Create a ns simulator
set ns [new Simulator]

#Setup topography object
set topo       [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)

#Open the NS trace file
set tracefile [open optimization.tr w]
$ns trace-all $tracefile

#Open the NAM trace file
set namfile [open optimization.nam w]
$ns namtrace-all $namfile
$ns namtrace-all-wireless $namfile $val(x) $val(y)
set chan [new $val(chan)];#Create wireless channel


$ns node-config -adhocRouting  $val(rp) \
                -llType        $val(ll) \
                -macType       $val(mac) \
                -ifqType       $val(ifq) \
                -ifqLen        $val(ifqlen) \
                -antType       $val(ant) \
                -propType      $val(prop) \
                -phyType       $val(netif) \
                -channel       $chan \
                -topoInstance  $topo \
                -agentTrace    ON \
                -routerTrace   ON \
                -macTrace      ON \
                -movementTrace ON


#Create 21 nodes
set n0 [$ns node]
$n0 set X_ 569
$n0 set Y_ 316
$n0 set Z_ 0.0
$ns initial_node_pos $n0 20
set n1 [$ns node]
$n1 set X_ 488
$n1 set Y_ 238
$n1 set Z_ 0.0
$ns initial_node_pos $n1 20
set n2 [$ns node]
$n2 set X_ 646
$n2 set Y_ 236
$n2 set Z_ 0.0
$ns initial_node_pos $n2 20
set n3 [$ns node]
$n3 set X_ 472
$n3 set Y_ 400
$n3 set Z_ 0.0
$ns initial_node_pos $n3 20
set n4 [$ns node]
$n4 set X_ 648
$n4 set Y_ 406
$n4 set Z_ 0.0
$ns initial_node_pos $n4 20
set n5 [$ns node]
$n5 set X_ 358
$n5 set Y_ 241
$n5 set Z_ 0.0
$ns initial_node_pos $n5 20
set n6 [$ns node]
$n6 set X_ 382
$n6 set Y_ 147
$n6 set Z_ 0.0
$ns initial_node_pos $n6 20
set n7 [$ns node]
$n7 set X_ 461
$n7 set Y_ 140
$n7 set Z_ 0.0
$ns initial_node_pos $n7 20
set n8 [$ns node]
$n8 set X_ 490
$n8 set Y_ 290
$n8 set Z_ 0.0
$ns initial_node_pos $n8 20
set n9 [$ns node]
$n9 set X_ 546
$n9 set Y_ 165
$n9 set Z_ 0.0
$ns initial_node_pos $n9 20
set n10 [$ns node]
$n10 set X_ 734
$n10 set Y_ 261
$n10 set Z_ 0.0
$ns initial_node_pos $n10 20
set n11 [$ns node]
$n11 set X_ 736
$n11 set Y_ 150
$n11 set Z_ 0.0
$ns initial_node_pos $n11 20
set n12 [$ns node]
$n12 set X_ 665
$n12 set Y_ 118
$n12 set Z_ 0.0
$ns initial_node_pos $n12 20
set n13 [$ns node]
$n13 set X_ 363
$n13 set Y_ 323
$n13 set Z_ 0.0
$ns initial_node_pos $n13 20
set n14 [$ns node]
$n14 set X_ 332
$n14 set Y_ 414
$n14 set Z_ 0.0
$ns initial_node_pos $n14 20
set n15 [$ns node]
$n15 set X_ 401
$n15 set Y_ 479
$n15 set Z_ 0.0
$ns initial_node_pos $n15 20
set n16 [$ns node]
$n16 set X_ 540
$n16 set Y_ 460
$n16 set Z_ 0.0
$ns initial_node_pos $n16 20
set n17 [$ns node]
$n17 set X_ 583
$n17 set Y_ 362
$n17 set Z_ 0.0
$ns initial_node_pos $n17 20
set n18 [$ns node]
$n18 set X_ 654
$n18 set Y_ 494
$n18 set Z_ 0.0
$ns initial_node_pos $n18 20
set n19 [$ns node]
$n19 set X_ 734
$n19 set Y_ 468
$n19 set Z_ 0.0
$ns initial_node_pos $n19 20
set n20 [$ns node]
$n20 set X_ 761
$n20 set Y_ 369
$n20 set Z_ 0.0
$ns initial_node_pos $n20 20

$ns at 1.0 "$n0 add-mark n0 green hexagon"
$ns at 1.0 "$n1 add-mark n1 #FF8C00 circle"
$ns at 1.0 "$n2 add-mark n2 #FF8C00 circle"
$ns at 1.0 "$n3 add-mark n3 brown circle"
$ns at 1.0 "$n4 add-mark n4 brown circle"
$ns at 1.0 "$n5 add-mark n5 #FF8C00 circle"
$ns at 1.0 "$n6 add-mark n6 #FF8C00 circle"
$ns at 1.0 "$n7 add-mark n7 #FF8C00 circle"
$ns at 1.0 "$n8 add-mark n8 #FF8C00 circle"
$ns at 1.0 "$n9 add-mark n9 #FF8C00 circle"
$ns at 1.0 "$n10 add-mark n10 #FF8C00 circle"
$ns at 1.0 "$n11 add-mark n11 #FF8C00 circle"
$ns at 1.0 "$n12 add-mark n12 #FF8C00 circle"
$ns at 1.0 "$n13 add-mark n13 brown circle"
$ns at 1.0 "$n14 add-mark n14 brown circle"
$ns at 1.0 "$n15 add-mark n15 brown circle"
$ns at 1.0 "$n16 add-mark n16 brown circle"
$ns at 1.0 "$n17 add-mark n17 brown circle"
$ns at 1.0 "$n18 add-mark n18 brown circle"
$ns at 1.0 "$n19 add-mark n19 brown circle"
$ns at 1.0 "$n20 add-mark n20 brown circle"
$ns at 1.0 "$n0 label MS"

$ns at 2.0 "$n5 label Source"
$ns at 2.0 "$n5 delete-mark n5"
$ns at 2.0 "$n5 add-mark n5 #8B008B  circle"
$ns at 2.0 "$n9 label Destination"
$ns at 2.0 "$n9 delete-mark n9"
$ns at 2.0 "$n9 add-mark n9 #8B008B  circle"
$ns at 4.4 "$n5 label ."
$ns at 4.4 "$n5 delete-mark n5"
$ns at 4.4 "$n5 add-mark n5 #FF8C00 circle"
$ns at 4.4 "$n9 delete-mark n9"
$ns at 4.4 "$n9 label ."
$ns at 4.4 "$n9 add-mark n9 #FF8C00  circle" 
$ns at 4.4 "$n6 label Source"
$ns at 4.4 "$n6 delete-mark n6"
$ns at 4.4 "$n6 add-mark n6 #8B008B  circle"
$ns at 4.4 "$n8 label Destination"
$ns at 4.4 "$n8 delete-mark n8"
$ns at 4.4 "$n8 add-mark n8 #8B008B  circle"

$ns at 6.7 "$n6 label ."
$ns at 6.7 "$n6 delete-mark n6"
$ns at 6.7 "$n6 add-mark n6 #FF8C00 circle"
$ns at 6.7 "$n8 delete-mark n8"
$ns at 6.7 "$n8 label ."
$ns at 6.7 "$n8 add-mark n8 #FF8C00  circle" 

$ns at 6.7 "$n1 delete-mark n1"
$ns at 6.7 "$n1 label CH"
$ns at 6.7 "$n1 add-mark n1 red square" 

$ns at 6.7 "$n9 label Source"
$ns at 6.7 "$n9 delete-mark n9"
$ns at 6.7 "$n9 add-mark n9 #8B008B  circle"
$ns at 6.7 "$n10 label Destination"
$ns at 6.7 "$n10 delete-mark n10"
$ns at 6.7 "$n10 add-mark n10 #8B008B  circle"

$ns at 9.0 "$n9 label ."
$ns at 9.0 "$n9 delete-mark n9"
$ns at 9.0 "$n9 add-mark n9 #FF8C00 circle"
$ns at 9.0 "$n10 delete-mark n10"
$ns at 9.0 "$n10 label ."
$ns at 9.0 "$n10 add-mark n10 #FF8C00  circle" 

$ns at 9.0 "$n8 label Source"
$ns at 9.0 "$n8 delete-mark n8"
$ns at 9.0 "$n8 add-mark n8 #8B008B  circle"
$ns at 9.0 "$n11 label Destination"
$ns at 9.0 "$n11 delete-mark n11"
$ns at 9.0 "$n11 add-mark n11 #8B008B  circle"

$ns at 11.3 "$n8 label ."
$ns at 11.3 "$n8 delete-mark n8"
$ns at 11.3 "$n8 add-mark n8 #FF8C00 circle"
$ns at 11.3 "$n11 delete-mark n11"
$ns at 11.3 "$n11 label ."
$ns at 11.3 "$n11 add-mark n11 #FF8C00  circle" 

$ns at 11.4 "$n2 delete-mark n2"
$ns at 11.4 "$n2 label CH"
$ns at 11.4 "$n2 add-mark n2 red square" 

### second cluster

$ns at 11.4 "$n14 label Source"
$ns at 11.4 "$n14 delete-mark n14"
$ns at 11.4 "$n14 add-mark n14 blue  circle"
$ns at 11.4 "$n16 label Destination"
$ns at 11.4 "$n16 delete-mark n16"
$ns at 11.4 "$n16 add-mark n16 blue  circle"

$ns at 13.6 "$n14 label ."
$ns at 13.6 "$n14 delete-mark n14"
$ns at 13.6 "$n14 add-mark n14 brown circle"
$ns at 13.6 "$n16 delete-mark n16"
$ns at 13.6 "$n16 label ."
$ns at 13.6 "$n16 add-mark n16 brown  circle" 

$ns at 13.6 "$n17 label Source"
$ns at 13.6 "$n17 delete-mark n17"
$ns at 13.6 "$n17 add-mark n17 blue  circle"
$ns at 13.6 "$n15 label Destination"
$ns at 13.6 "$n15 delete-mark n15"
$ns at 13.6 "$n15 add-mark n15 blue  circle"

$ns at 15.7 "$n17 label ."
$ns at 15.7 "$n17 delete-mark n17"
$ns at 15.7 "$n17 add-mark n17 brown circle"
$ns at 15.7 "$n15 delete-mark n15"
$ns at 15.7 "$n15 label ."
$ns at 15.7 "$n15 add-mark n15 brown  circle" 

$ns at 15.7 "$n3 delete-mark n3"
$ns at 15.7 "$n3 label CH"
$ns at 15.7 "$n3 add-mark n3 red square" 

$ns at 15.7 "$n20 label Source"
$ns at 15.7 "$n20 delete-mark n20"
$ns at 15.7 "$n20 add-mark n20 blue  circle"
$ns at 15.7 "$n16 label Destination"
$ns at 15.7 "$n16 delete-mark n16"
$ns at 15.7 "$n16 add-mark n16 blue  circle"

$ns at 18.0 "$n20 label ."
$ns at 18.0 "$n20 delete-mark n20"
$ns at 18.0 "$n20 add-mark n20 brown circle"
$ns at 18.0 "$n16 delete-mark n16"
$ns at 18.0 "$n16 label ."
$ns at 18.0 "$n16 add-mark n16 brown  circle" 

$ns at 18.0 "$n17 label Source"
$ns at 18.0 "$n17 delete-mark n17"
$ns at 18.0 "$n17 add-mark n17 blue  circle"
$ns at 18.0 "$n19 label Destination"
$ns at 18.0 "$n19 delete-mark n19"
$ns at 18.0 "$n19 add-mark n19 blue  circle"

$ns at 20.3 "$n17 label ."
$ns at 20.3 "$n17 delete-mark n17"
$ns at 20.3 "$n17 add-mark n17 brown circle"
$ns at 20.3 "$n19 delete-mark n19"
$ns at 20.3 "$n19 label ."
$ns at 20.3 "$n19 add-mark n19 brown  circle" 

$ns at 20.4 "$n4 delete-mark n4"
$ns at 20.4 "$n4 label CH"
$ns at 20.4 "$n4 add-mark n4 red square" 















#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n5 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n1 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 2.1 "$ftp1 start"
$ns at 2.9 "$ftp1 stop"


#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n1 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n9 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 3.1 "$ftp1 start"
$ns at 4.0 "$ftp1 stop"

#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n6 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n1 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 4.4 "$ftp1 start"
$ns at 5.3 "$ftp1 stop"

#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n1 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n8 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 5.4 "$ftp1 start"
$ns at 6.3 "$ftp1 stop"

# second com ch

#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n9 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n2 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 6.7 "$ftp1 start"
$ns at 7.6 "$ftp1 stop"

#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n2 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n10 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 7.7 "$ftp1 start"
$ns at 8.6 "$ftp1 stop"  

#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n8 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n2 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 9.0 "$ftp1 start"
$ns at 9.9 "$ftp1 stop"  

#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n2 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n11 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 10.1 "$ftp1 start"
$ns at 11.0 "$ftp1 stop"  

## second cluster

#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n14 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n3 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 11.4 "$ftp1 start"
$ns at 12.3 "$ftp1 stop"  

#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n3 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n16 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 12.4 "$ftp1 start"
$ns at 13.3 "$ftp1 stop"  


#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n17 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n3 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 13.7 "$ftp1 start"
$ns at 14.4 "$ftp1 stop"  


#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n3 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n15 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 14.6 "$ftp1 start"
$ns at 15.4 "$ftp1 stop"  

#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n20 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n4 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 15.7 "$ftp1 start"
$ns at 16.6 "$ftp1 stop"  

#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n4 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n16 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 16.7 "$ftp1 start"
$ns at 17.6 "$ftp1 stop" 

#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n17 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n4 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 18.1 "$ftp1 start"
$ns at 19.0 "$ftp1 stop" 

#Setup a TCP connection
set tcp1 [new Agent/TCP]
$ns attach-agent $n4 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n19 $sink1
$ns connect $tcp1 $sink1
$tcp1 set packetSize_ 1500
#Setup a FTP Application over TCP connection
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 19.1 "$ftp1 start"
$ns at 20.0 "$ftp1 stop" 

## cluster communication








$ns at 1.0 "$ns trace-annotate \"Network Created.....\"" 
$ns at 9.0 "$ns trace-annotate \"Data transmitted successfully.....\""


proc finish {} {
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
    exec nam optimization.nam &
exec awk -f performance.awk optimization.tr > graph.xgr &
    exec awk -f through.awk optimization.tr > throughput.xgr &
    exec xgraph Throughput &
    exec xgraph delay &
    exec xgraph pdr &
    exec xgraph energygh &  
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "\$n$i reset"
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run
