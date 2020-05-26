FROM dadepo/ipfs-private:latest

COPY ./public /public


# add website to image
# add website to ipfs

CMD ipfs add -r /public && ipfs daemon --migrate=true
