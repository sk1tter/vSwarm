# MIT License
#
# Copyright (c) 2021 EASE lab
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

FROM vhiveease/python-slim:latest as builder
ARG target_arg
ENV target=$target_arg
WORKDIR /py
COPY ./benchmarks/map-reduce/requirements.txt ./
RUN apt update && \
    apt install git curl -y && \
    pip3 install --no-cache-dir --user -r requirements.txt
COPY ./utils/tracing/python/tracing.py ./
COPY ./benchmarks/map-reduce/${target}/* ./
COPY ./benchmarks/map-reduce/proto/mapreduce_pb2* ./
COPY ./benchmarks/map-reduce/proto/helloworld_pb2* ./
RUN --mount=type=secret,id=GOPRIVATE_KEY \
        git config --global url."https://ease-lab:$(cat /run/secrets/GOPRIVATE_KEY)@github.com/ease-lab/vhive-xdt".insteadOf "https://github.com/ease-lab/vhive-xdt"
RUN curl https://$(cat /run/secrets/GOPRIVATE_KEY):x-oauth-basic@api.github.com/repos/ease-lab/vhive-xdt/git/refs/heads/broadcast-support -o version.json
RUN git clone --depth 1 https://github.com/ease-lab/vhive-xdt /xdt

FROM vhiveease/python-slim:latest
COPY --from=builder /root/.local /root/.local
COPY --from=builder /py /app
COPY --from=builder /xdt/sdk/python/ /app
COPY --from=builder /xdt/proto/downXDT/ /app
COPY --from=builder /xdt/proto/upXDT/ /app
COPY --from=builder /xdt/proto/crossXDT/ /app
WORKDIR /app
ENV PATH=/root/.local/bin:$PATH
ENTRYPOINT ["python3", "-u", "./main.py"]
