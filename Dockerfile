FROM ubuntu:18.04

# Add x86 support
RUN dpkg --add-architecture i386 && \
  apt-get update && \
  apt-get install -y \
    lib32stdc++6

# Add compiler
COPY pawnc/bin /usr/local/bin
COPY pawnc/lib /usr/lib32