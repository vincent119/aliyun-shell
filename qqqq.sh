#!/bin/bash

for region in $( aliyun ecs DescribeRegions | jq '.Regions.Region[].RegionId' )
    do
        #echo $region
        reg=$(echo $region | sed s/\"//g )
        echo '---'
        #for zone in $(aliyun ecs DescribeZones --RegionId $reg | jq '.Zones.Zone[] | "\(.ZoneId) \(.LocalName)"')
        #for zone in $(aliyun ecs DescribeZones --RegionId $reg)
        for zone in $(aliyun ecs DescribeZones --RegionId $reg | jq '.Zones.Zone[].ZoneId')
        do
 	        #echo $zone
	        printf "%s,%s\n"  $zone
        done
        echo ''
    done
