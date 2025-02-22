// MIT License

// Copyright (c) 2022 EASE lab

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

module github.com/ease-lab/vSwarm/benchmarks/hotel-app

go 1.16

replace github.com/ease-lab/vSwarm/utils/tracing/go => ../../utils/tracing/go

require (
	github.com/bradfitz/gomemcache v0.0.0-20220106215444-fb4bf637b56d
	github.com/ease-lab/vSwarm-proto v0.2.0
	github.com/ease-lab/vSwarm/utils/tracing/go v0.0.0-20220719164711-8782cc0ff194
	github.com/hailocab/go-geoindex v0.0.0-20160127134810-64631bfe9711
	github.com/klauspost/compress v1.15.9 // indirect
	github.com/montanaflynn/stats v0.6.6 // indirect
	github.com/sirupsen/logrus v1.9.0
	github.com/youmark/pkcs8 v0.0.0-20201027041543-1326539a0a0a // indirect
	go.mongodb.org/mongo-driver v1.10.0
	golang.org/x/crypto v0.0.0-20220722155217-630584e8d5aa // indirect
	golang.org/x/net v0.0.0-20220722155237-a158d28d115b
	golang.org/x/sync v0.0.0-20220722155255-886fb9371eb4 // indirect
	google.golang.org/grpc v1.48.0
	gopkg.in/mgo.v2 v2.0.0-20190816093944-a6b53ec6cb22
)
