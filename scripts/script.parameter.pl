################ RAW PARAM #####################
$sim_end  500000
$cap  10 # link_rate
$link_delay 0.000000250 # mean_link_delay
$host_delay 0.0000005  # host_delay, disabled!
$cur_queueSize 13
$cur_load (0.1, 0.45, 0.5, 0.6, 0.7, 0.75, 0.8)
$connections_per_pair 10
$meanFlowSize 1745 * 1460
$enableMultiPath 1
$cur_perflowMP 0
$cur_sourceAlg DCTCP-Sack
$cur_ackratio 1
$cur_slowstartrestart true
$DCTCP_g  0.0625  = 1.0/16.0
$cur_rto 0.000024
$switchAlg DropTail
$cur_DCTCP_K [0-10000]
$cur_drop_prio true # drop high priority, queue/drop-tail.h:DropTail::enque
$cur_prio_scheme 2 # tcp/tcp-full.cc:FullTcpAgent::set_prio SackFullTcpAgent::set_prio
$cur_deque_scheme true  # deque highest priority, queue/drop-tail.h::DropTail
$cur_prob_cap 5  # tcp/tcp-full.cc:MinTcpAgent::timeout_action, start probe after 5 (prob_cap) timeout
$cur_ko true # keep order, queue/drop-tail.h::DropTail
$cur_topology_spt 16  #server per tor
$cur_topology_tors 9
$cur_topology_spines 4 
$cur_topology_x 1
$enableNAM 0

################ 100G PARAM #####################
$sim_end  500000
$cap  10 # link_rate
$link_delay 0.000000250 # mean_link_delay
$host_delay 0.0000005  # host_delay, disabled!
$cur_queueSize 13 # 3BDP
$cur_load (0.1, 0.45, 0.5, 0.6, 0.7, 0.75, 0.8)
$connections_per_pair 10
$meanFlowSize 1745 * 1460 # disable
$enableMultiPath 1
$cur_perflowMP 0
$cur_sourceAlg DCTCP-Sack
$cur_ackratio 1
$cur_slowstartrestart true
$DCTCP_g  0.0625  = 1.0/16.0
$cur_rto 0.000024
$switchAlg DropTail
$cur_DCTCP_K [0-10000]
$cur_drop_prio true # drop high priority, queue/drop-tail.h:DropTail::enque
$cur_prio_scheme 2 # tcp/tcp-full.cc:FullTcpAgent::set_prio SackFullTcpAgent::set_prio
$cur_deque_scheme true  # deque highest priority, queue/drop-tail.h::DropTail
$cur_prob_cap 5  # tcp/tcp-full.cc:MinTcpAgent::timeout_action, start probe after 5 (prob_cap) timeout
$cur_ko true # keep order, queue/drop-tail.h::DropTail
$cur_topology_spt 16  #server per tor
$cur_topology_tors 9
$cur_topology_spines 4 
$cur_topology_x 1
$enableNAM 0
$logbase "/.../.."
$flowtrace "/...."

../ns-2.34/ns empirical_pfabric.tcl  50000 10  0.000001 0.0000005 300 0.1 10 2547700 1 0 DCTCP-Sack 1 true 0.0625 0.000024 DropTail 10000 true 2 true 5 true 16 9 4 1 0 ./ ./flow_c1.txt