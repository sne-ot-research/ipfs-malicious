FROM dadepo/ipfs-private:latest

COPY ./public /public

# Add peertheripper binary
COPY --from=0 $SRC_DIR/bin/peertheripper /usr/local/bin/peertheripper

# add website to image
# add website to ipfs

CMD ipfs add -r /public && ipfs daemon --migrate=true
