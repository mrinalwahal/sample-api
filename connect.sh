export ART_MIDGARD_SERVER=midgard.pp.argonaut.live
export ART_FRONTEGG_SERVER=argonaut-pp.frontegg.com
# aws eks update-kubeconfig --name wahal-keda-test --region us-east-2
eval $(art configure generate-aws-credentials --format eval)
aws eks update-kubeconfig --name wahal-keda-test --region us-east-2
aws sts get-caller-identity
