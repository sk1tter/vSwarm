module auth

go 1.16

replace github.com/ease-lab/vSwarm/utils/tracing/go => ../../utils/tracing/go

require (
	github.com/ease-lab/vSwarm/utils/tracing/go v0.0.0-20220427112636-f8f3fc171804
	github.com/sirupsen/logrus v1.8.1
	google.golang.org/grpc v1.46.0
	google.golang.org/grpc/examples v0.0.0-20220413171549-7567a5d96538
)
