FROM n8nio/n8n

RUN mkdir /my-nodes-n8n
COPY . /my-nodes-n8n
RUN cd /my-nodes-n8n && npm i && npm run build && npm pack && cd /usr/local/lib/node_modules/n8n && npm install /my-nodes-n8n/my-nodes-n8n-0.1.0.tgz