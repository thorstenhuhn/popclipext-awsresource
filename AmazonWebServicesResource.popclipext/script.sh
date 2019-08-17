if [[ $POPCLIP_TEXT == ami-* ]]; then
	open "https://$POPCLIP_OPTION_AWSREGION.console.aws.amazon.com/ec2/v2/home?region=$POPCLIP_OPTION_AWSREGION#Images:visibility=owned-by-me;search=$POPCLIP_TEXT;sort=desc:creationDate"
elif [[ $POPCLIP_TEXT == eni* ]]; then
	open "https://$POPCLIP_OPTION_AWSREGION.console.aws.amazon.com/ec2/v2/home?region=$POPCLIP_OPTION_AWSREGION#NIC:search=$POPCLIP_TEXT;sort=desc:tag:Name"
elif [[ $POPCLIP_TEXT == i* ]]; then
	open "https://$POPCLIP_OPTION_AWSREGION.console.aws.amazon.com/ec2/v2/home?region=$POPCLIP_OPTION_AWSREGION#Instances:search=$POPCLIP_TEXT;sort=desc:launchTime"
elif [[ $POPCLIP_TEXT == sg* ]]; then
	open "https://$POPCLIP_OPTION_AWSREGION.console.aws.amazon.com/ec2/v2/home?region=$POPCLIP_OPTION_AWSREGION#SecurityGroups:search=$POPCLIP_TEXT;sort=groupName"
elif [[ $POPCLIP_TEXT == snap* ]]; then
	open "https://$POPCLIP_OPTION_AWSREGION.console.aws.amazon.com/ec2/v2/home?region=$POPCLIP_OPTION_AWSREGION#Snapshots:visibility=owned-by-me;search=$POPCLIP_TEXT;sort=startTime"
elif [[ $POPCLIP_TEXT == subnet* ]]; then
	open "https://$POPCLIP_OPTION_AWSREGION.console.aws.amazon.com/vpc/home?region=$POPCLIP_OPTION_AWSREGION#subnets:search=$POPCLIP_TEXT;sort=SubnetId"
elif [[ $POPCLIP_TEXT == vol* ]]; then
	open "https://$POPCLIP_OPTION_AWSREGION.console.aws.amazon.com/ec2/v2/home?region=$POPCLIP_OPTION_AWSREGION#Volumes:search=$POPCLIP_TEXT;sort=desc:createTime"
elif [[ $POPCLIP_TEXT == vpc* ]]; then
	open "https://$POPCLIP_OPTION_AWSREGION.console.aws.amazon.com/vpc/home?region=$POPCLIP_OPTION_AWSREGION#vpcs:filter=$POPCLIP_TEXT"
else:
	# ip address
	open "https://$POPCLIP_OPTION_AWSREGION.console.aws.amazon.com/ec2/v2/home?region=$POPCLIP_OPTION_AWSREGION#Instances:search=$POPCLIP_TEXT;sort=desc:launchTime"
fi
