ARG PYTHON_VERSION="3.11"
FROM python:${PYTHON_VERSION}

WORKDIR /tmp

RUN --mount=type=tmpfs,target=/root/.cargo \
    curl https://sh.rustup.rs -sSf | sh -s -- -y && \
    . $HOME/.cargo/env && \
    pip install "poetry>=1.3,<2.0"
