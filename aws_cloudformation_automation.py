import boto3
import pprint

pp = pprint.PrettyPrinter(indent=4)

client = boto3.client('cloudformation')

response = client.list_stacks(
    #NextToken='string',
    StackStatusFilter=['CREATE_COMPLETE']
)

count = 0
#pp.pprint(response["StackSummaries"])
for entry in response["StackSummaries"]:
	print "Stack List value at %s: %s" % (count, entry["StackName"])
	count = count + 1