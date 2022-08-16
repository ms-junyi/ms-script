export PLATFORM=brcm
DUTIP=10.3.147.252
PORTPATH=/tmp/junyi/SAI/test/sai_test/resources/s6000_s1220-r0_port_config.ini
DIR=/tmp/junyi/SAI/test/sai_test
TESTFILE=sai_vlan_test
TESTCASES=(
        Vlan_Domain_Forwarding_Test
        UntagAccessToAccessTest
        MismatchDropTest
        TaggedFrameFilteringTest
        UnTaggedFrameFilteringTest
        TaggedVlanFloodingTest
        UnTaggedVlanFloodingTest
        BroadcastTest
        UntaggedMacLearningTest
        TaggedMacLearningTest
        VlanMemberListTest
        VlanMemberInvalidTest
        DisableMacLearningTaggedTest
        DisableMacLearningUntaggedTest
        ArpRequestFloodingTest
        ArpRequestLearningTest
        TaggedVlanStatusTest
        UntaggedVlanStatusTest
)
for(( i=0;i<${#TESTCASES[@]};i++)) do
    testcase=$TESTFILE".${TESTCASES[i]}"
    if (($i == 0)); then
        common_configured=false
    else
        common_configured=true
    fi
    ptf --test-dir $DIR $testcase --interface '0-0@eth0' --interface '0-1@eth1' --interface '0-2@eth2' --interface '0-3@eth3' --interface '0-4@eth4' --interface '0-5@eth5' --interface '0-6@eth6' --interface '0-7@eth7' --interface '0-8@eth8' --interface '0-9@eth9' --interface '0-10@eth10' --interface '0-11@eth11' --interface '0-12@eth12' --interface '0-13@eth13' --interface '0-14@eth14' --interface '0-15@eth15' --interface '0-16@eth16' --interface '0-17@eth17' --interface '0-18@eth18' --interface '0-19@eth19' --interface '0-20@eth20' --interface '0-21@eth21' --interface '0-22@eth22' --interface '0-23@eth23' --interface '0-24@eth24' --interface '0-25@eth25' --interface '0-26@eth26' --interface '0-27@eth27' --interface '0-28@eth28' --interface '0-29@eth29' --interface '0-30@eth30' --interface '0-31@eth31'  --relax "--test-params=thrift_server='$DUTIP';port_config_ini='$PORTPATH';common_configured='$common_configured'";
done;